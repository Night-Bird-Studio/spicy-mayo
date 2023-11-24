import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_entity.dart';

part 'page_of_movies_entity.freezed.dart';

@freezed
class PageOfMoviesEntity with _$PageOfMoviesEntity {
  const factory PageOfMoviesEntity({
    required int page,
    required List<MovieEntity> results,
    required int totalPages,
    required int totalResults,
  }) = _PageOfMoviesEntity;
}
