import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/movie_entity.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  @HiveType(typeId: 0)
  const factory MovieModel({
    @HiveField(0) @JsonKey(name: 'id') required int id,
    @HiveField(1) @JsonKey(name: 'title') required String title,
    @HiveField(2) @JsonKey(name: 'poster_path') required String posterPath,
    @HiveField(3) @JsonKey(name: 'vote_average') required double ratingAverage,
    @HiveField(4) @JsonKey(name: 'vote_count') required int ratingCount,
    @HiveField(5) @JsonKey(name: 'overview') required String overview,
  }) = _MovieModel;

  factory MovieModel.fromJson(dynamic json) => _$MovieModelFromJson(json);

  factory MovieModel.fromDomain(MovieEntity entity) => MovieModel(
        id: entity.id,
        title: entity.title,
        posterPath: entity.posterPath,
        ratingAverage: entity.ratingAverage,
        ratingCount: entity.ratingCount,
        overview: entity.overview,
      );
}

extension MovieModelX on MovieModel {
  MovieEntity toDomain() => MovieEntity(
        id: id,
        title: title,
        posterPath: posterPath,
        ratingAverage: ratingAverage,
        ratingCount: ratingCount,
        overview: overview,
      );
}
