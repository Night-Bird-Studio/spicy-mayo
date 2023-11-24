import 'package:flutter/foundation.dart';

import '../../../../core/domain/entities/result.dart';
import '../entities/movie_entity.dart';
import '../entities/page_of_movies_entity.dart';

@immutable
abstract interface class MovieRepository {
  Future<Result<PageOfMoviesEntity>> byPage(int page, String locale);

  Future<Result<MovieEntity>> byId(int id, String locale);

  Future<Result<void>> addToFavorite(MovieEntity movie);

  Future<Result<void>> removeFromFavorite(MovieEntity movie);

  Future<Result<List<MovieEntity>>> favorites();
}
