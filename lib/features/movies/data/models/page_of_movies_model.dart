import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/page_of_movies_entity.dart';
import 'movie_model.dart';

part 'page_of_movies_model.freezed.dart';
part 'page_of_movies_model.g.dart';

@freezed
class PageOfMoviesModel with _$PageOfMoviesModel {
  const factory PageOfMoviesModel({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'results') required List<MovieModel> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _PageOfMoviesModel;

  factory PageOfMoviesModel.fromJson(dynamic json) => _$PageOfMoviesModelFromJson(json);

  factory PageOfMoviesModel.fromDomain(PageOfMoviesEntity entity) => PageOfMoviesModel(
        page: entity.page,
        results: entity.results.map(MovieModel.fromDomain).toList(),
        totalPages: entity.totalPages,
        totalResults: entity.totalResults,
      );
}

extension PageOfMoviesModelX on PageOfMoviesModel {
  PageOfMoviesEntity toDomain() => PageOfMoviesEntity(
        page: page,
        results: results.map((e) => e.toDomain()).toList(),
        totalPages: totalPages,
        totalResults: totalResults,
      );
}
