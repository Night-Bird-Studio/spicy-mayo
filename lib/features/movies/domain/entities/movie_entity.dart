import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';

@freezed
class MovieEntity with _$MovieEntity {
  const factory MovieEntity({
    required int id,
    required String title,
    required String posterPath,
    required double ratingAverage,
    required int ratingCount,
    required String overview,
  }) = _MovieEntity;
}
