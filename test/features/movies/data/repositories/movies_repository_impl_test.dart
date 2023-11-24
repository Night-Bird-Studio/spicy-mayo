import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:socle/core/domain/entities/result.dart';
import 'package:socle/core/error/exceptions.dart';
import 'package:socle/core/error/failures.dart';
import 'package:socle/core/network/app_network_info.dart';
import 'package:socle/features/movies/data/datasources/movie_local_data_source.dart';
import 'package:socle/features/movies/data/datasources/movie_remote_data_source.dart';
import 'package:socle/features/movies/data/models/movie_model.dart';
import 'package:socle/features/movies/data/models/page_of_movies_model.dart';
import 'package:socle/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:socle/features/movies/domain/entities/movie_entity.dart';
import 'package:socle/features/movies/domain/entities/page_of_movies_entity.dart';

import './movies_repository_impl_test.mocks.dart';
import '../../../../fixtures/fixture_reader.dart';

@GenerateMocks([MovieRemoteDataSource, MovieLocalDataSource, AppNetworkInfo])
void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'assets/cfg/app_settings');

  late MovieRepositoryImpl repository;
  late MockMovieRemoteDataSource remoteDataSource;
  late MockMovieLocalDataSource localDataSource;
  late MockAppNetworkInfo appNetworkInfo;

  setUp(() {
    remoteDataSource = MockMovieRemoteDataSource();
    localDataSource = MockMovieLocalDataSource();
    appNetworkInfo = MockAppNetworkInfo();
    repository = MovieRepositoryImpl(
      movieRemoteDataSource: remoteDataSource,
      movieLocalDataSource: localDataSource,
      networkInfo: appNetworkInfo,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(appNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(appNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  group('getMovieById', () {
    final expectedResult = const MovieModel(
      id: 760161,
      overview:
          'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
      posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
      ratingAverage: 6.818,
      ratingCount: 1036,
      title: 'Esther 2 : Les Origines',
    ).toDomain();

    const id = 760161;
    const locale = 'fr';

    runTestsOnline(() {
      final jsonData = json.decode(fixture('features/movies/movie.json'));

      setUp(() {
        when(
          remoteDataSource.getMovieById(any, any),
        ).thenAnswer((_) async => jsonData);
      });

      test('should return movie on success', () async {
        // Arrange
        // Act
        final result = await repository.byId(id, locale);
        // Assert
        verify(
          remoteDataSource.getMovieById(id, locale),
        );
        expect(result, equals(Result<MovieEntity>.success(expectedResult)));
      });
      test('should return a failure on exception', () async {
        // Arrange
        when(
          remoteDataSource.getMovieById(any, any),
        ).thenThrow(ServerException());
        // Act
        final result = await repository.byId(id, locale);
        // Assert
        verify(
          remoteDataSource.getMovieById(id, locale),
        );
        expect(result, equals(const Result<MovieEntity>.failure(Failure.server())));
      });
    });

    runTestsOffline(() {
      test(
        'should return a offline failure when device is offline',
        () async {
          // Arrange
          // Act
          final result = await repository.byId(id, locale);
          // Assert
          verifyZeroInteractions(remoteDataSource);
          verify(appNetworkInfo.isConnected);
          expect(result, equals(const Result<MovieEntity>.failure(Failure.offline())));
        },
      );
    });
  });

  group('getMovies', () {
    final expectedResult = const PageOfMoviesModel(
      page: 1,
      totalPages: 35500,
      totalResults: 709985,
      results: [
        MovieModel(
          id: 760161,
          overview:
              'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
          posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
          ratingAverage: 6.818,
          ratingCount: 1036,
          title: 'Esther 2 : Les Origines',
        ),
        MovieModel(
          id: 575322,
          overview:
              'Dans un futur proche… Après des siècles d\'errance environnementale, les jours de la Terre sont comptés. Avec elle, c\'est l\'espèce humaine qui est menacée d\'extinction. Mais l\'espoir renaît lorsqu\'un jeune scientifique dévoile un procédé révolutionnaire de terraformation, qui ouvre la voie vers la colonisation de nouvelles planètes. Un groupe d\'élite de tous bords et de toutes nationalités est constitué. Sa mission : prendre les commandes du fleuron de la flotte internationale, et partir en quête d\'un nouveau foyer pour l\'humanité. Naviguant vers l\'inconnu, ces nouveaux explorateurs sont alors loin d\'imaginer les immenses dangers qui les guettent.',
          posterPath: '/ssbDfH9xN857NyfJDgR9kfKFMBe.jpg',
          ratingAverage: 5.5,
          ratingCount: 92,
          title: 'Project Gemini',
        ),
        MovieModel(
          id: 985939,
          overview:
              'Pour les meilleurs amis Becky et Hunter, la vie consiste à vaincre ses peurs et à repousser ses limites. Mais après avoir grimpé à 2 000 pieds au sommet d\'une tour de radio isolée et abandonnée, elles se retrouvent bloquées sans aucun moyen de descendre. Maintenant, les compétences expertes en escalade de Becky et Hunter seront mises à l\'épreuve ultime alors qu\'elle se battent désespérément pour survivre aux éléments, au manque de fournitures et aux hauteurs vertigineuses.',
          posterPath: '/spCAxD99U1A6jsiePFoqdEcY0dG.jpg',
          ratingAverage: 7.4,
          ratingCount: 1456,
          title: 'Fall',
        )
      ],
    ).toDomain();

    const page = 1;
    const locale = 'fr';

    runTestsOnline(() {
      final jsonData = json.decode(fixture('features/movies/movies.json'));

      setUp(() {
        when(
          remoteDataSource.getMoviesByPage(any, any),
        ).thenAnswer((_) async => jsonData);
      });

      test('should return movies on success', () async {
        // Arrange
        // Act
        final result = await repository.byPage(page, locale);
        // Assert
        verify(
          remoteDataSource.getMoviesByPage(page, locale),
        );
        expect(result, equals(Result<PageOfMoviesEntity>.success(expectedResult)));
      });
      test('should return a failure on exception', () async {
        // Arrange
        when(
          remoteDataSource.getMoviesByPage(any, any),
        ).thenThrow(ServerException());
        // Act
        final result = await repository.byPage(page, locale);
        // Assert
        verify(
          remoteDataSource.getMoviesByPage(page, locale),
        );
        expect(result, equals(const Result<PageOfMoviesEntity>.failure(Failure.server())));
      });
    });

    runTestsOffline(() {
      test(
        'should return a offline failure when device is offline',
        () async {
          // Arrange
          // Act
          final result = await repository.byPage(page, locale);
          // Assert
          verifyZeroInteractions(remoteDataSource);
          verify(appNetworkInfo.isConnected);
          expect(result, equals(const Result<PageOfMoviesEntity>.failure(Failure.offline())));
        },
      );
    });
  });
}
