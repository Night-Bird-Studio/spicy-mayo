// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_of_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageOfMoviesModelImpl _$$PageOfMoviesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PageOfMoviesModelImpl(
      page: json['page'] as int,
      results:
          (json['results'] as List<dynamic>).map(MovieModel.fromJson).toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$PageOfMoviesModelImplToJson(
        _$PageOfMoviesModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
