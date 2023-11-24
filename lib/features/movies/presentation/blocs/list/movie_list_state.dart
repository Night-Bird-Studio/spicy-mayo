part of 'movie_list_cubit.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState.loading() = _Loading;

  const factory MovieListState.error() = _Error;

  const factory MovieListState.loaded({
    required List<MovieEntity> movies,
    required int page,
    required int totalPage,
  }) = _Loaded;
}
