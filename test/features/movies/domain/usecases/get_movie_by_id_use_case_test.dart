import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:socle/core/domain/entities/result.dart';
import 'package:socle/features/movies/domain/entities/movie_entity.dart';
import 'package:socle/features/movies/domain/repositories/movie_repository.dart';
import 'package:socle/features/movies/domain/usecases/get_movie_by_id_use_case.dart';

import './get_movie_by_id_use_case_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main() {
  late GetMovieByIdUseCase useCase;
  late MockMovieRepository mockMoviesRepository;

  setUp(() {
    mockMoviesRepository = MockMovieRepository();
    useCase = GetMovieByIdUseCase(mockMoviesRepository);
  });

  const expectedResult = MovieEntity(
    id: 760161,
    overview:
        'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
    posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
    ratingAverage: 6.818,
    ratingCount: 1036,
    title: 'Esther 2 : Les Origines',
  );

  const params = GetMovieByIdUseCaseParams(
    id: 760161,
    locale: 'fr',
  );

  test(
    'should get single movie from repository on success',
    () async {
      // Arrange
      when(
        mockMoviesRepository.byId(any, any),
      ).thenAnswer((_) async => const Result<MovieEntity>.success(expectedResult));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, const Result<MovieEntity>.success(expectedResult));
      verify(mockMoviesRepository.byId(params.id, params.locale));
      verifyNoMoreInteractions(mockMoviesRepository);
    },
  );
}
