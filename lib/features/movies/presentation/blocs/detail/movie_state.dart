part of 'movie_cubit.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.loading() = _Loading;

  const factory MovieState.error() = _Error;

  const factory MovieState.loaded({
    required MovieEntity movie,
  }) = _Loaded;
}
