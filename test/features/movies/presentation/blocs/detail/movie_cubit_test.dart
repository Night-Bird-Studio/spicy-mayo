import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:socle/core/domain/entities/result.dart';
import 'package:socle/core/error/failures.dart';
import 'package:socle/features/movies/domain/entities/movie_entity.dart';
import 'package:socle/features/movies/domain/usecases/get_movie_by_id_use_case.dart';
import 'package:socle/features/movies/presentation/blocs/detail/movie_cubit.dart';

import 'movie_cubit_test.mocks.dart';

@GenerateMocks([GetMovieByIdUseCase])
void main() {
  late MockGetMovieByIdUseCase getMovieByIdUseCase;

  const resultMovie = MovieEntity(
    id: 760161,
    overview:
        'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
    posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
    ratingAverage: 6.818,
    ratingCount: 1036,
    title: 'Esther 2 : Les Origines',
  );

  const id = 760161;
  const locale = 'fr';

  setUp(() {
    getMovieByIdUseCase = MockGetMovieByIdUseCase();
  });

  test('loading state should be MovieState.loading()', () {
    final cubit = MovieCubit(
      movieByIdUseCase: getMovieByIdUseCase,
    );
    // Assert
    expect(cubit.state, equals(const MovieState.loading()));
  });

  test(
    'should call getMovieById use case when getMovie() is called',
    () async {
      final cubit = MovieCubit(
        movieByIdUseCase: getMovieByIdUseCase,
      );
      // Arrange
      when(getMovieByIdUseCase(any)).thenAnswer((_) async => const Result.success(resultMovie));
      // Act
      cubit.getMovie(id, locale);
      // Assert
      verify(getMovieByIdUseCase.call(any));
    },
  );

  blocTest<MovieCubit, MovieState>(
    'should emit [loading, loaded] when getMovie() is a success',
    build: () => MovieCubit(
      movieByIdUseCase: getMovieByIdUseCase,
    ),
    setUp: () {
      when(getMovieByIdUseCase(any)).thenAnswer((_) async => const Result.success(resultMovie));
    },
    act: (cubit) => cubit.getMovie(id, locale),
    expect: () => const [
      MovieState.loading(),
      MovieState.loaded(movie: resultMovie),
    ],
  );

  blocTest<MovieCubit, MovieState>(
    'should emit [loading, error] when user is offline',
    build: () => MovieCubit(
      movieByIdUseCase: getMovieByIdUseCase,
    ),
    setUp: () {
      when(getMovieByIdUseCase(any)).thenAnswer((_) async => const Result.failure(Failure.offline()));
    },
    act: (cubit) => cubit.getMovie(id, locale),
    expect: () => [
      const MovieState.loading(),
      const MovieState.error(),
    ],
  );
}
