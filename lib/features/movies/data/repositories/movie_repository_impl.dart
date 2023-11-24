import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../core/domain/entities/result.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/app_network_info.dart';
import '../../domain/entities/movie_entity.dart';
import '../../domain/entities/page_of_movies_entity.dart';
import '../../domain/repositories/movie_repository.dart';
import '../datasources/movie_local_data_source.dart';
import '../datasources/movie_remote_data_source.dart';
import '../models/movie_model.dart';
import '../models/page_of_movies_model.dart';

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository {
  const MovieRepositoryImpl({
    required this.movieRemoteDataSource,
    required this.movieLocalDataSource,
    required this.networkInfo,
  });

  final MovieRemoteDataSource movieRemoteDataSource;
  final MovieLocalDataSource movieLocalDataSource;
  final AppNetworkInfo networkInfo;

  @override
  Future<Result<MovieEntity>> byId(int id, String locale) async => _ensureConnection(() async {
        final result = await movieRemoteDataSource.getMovieById(id, locale);
        final movie = MovieModel.fromJson(result);
        return Result.success(movie.toDomain());
      });

  @override
  Future<Result<PageOfMoviesEntity>> byPage(int page, String locale) async => _ensureConnection(() async {
        final result = await movieRemoteDataSource.getMoviesByPage(page, locale);
        final pageOfMovies = PageOfMoviesModel.fromJson(result);
        return Result.success(pageOfMovies.toDomain());
      });

  @override
  Future<Result<void>> addToFavorite(MovieEntity movie) async {
    try{
      await movieLocalDataSource.saveFavorite(MovieModel.fromDomain(movie));
      return const Result.success(null);
    } catch (_) {
      return const Result.failure(Failure.cache());
    }
  }

  @override
  Future<Result<void>> removeFromFavorite(MovieEntity movie) async {
    try{
      await movieLocalDataSource.removeFavorite(MovieModel.fromDomain(movie));
      return const Result.success(null);
    } catch (_) {
      return const Result.failure(Failure.cache());
    }
  }

  @override
  Future<Result<List<MovieEntity>>> favorites() async {
    try{
      final result = await movieLocalDataSource.retrieveFavorites();
      final list = result.map((e) => e.toDomain()).toList();
      return Result.success(list);
    } catch (_) {
      return const Result.failure(Failure.cache());
    }
  }

  Future<Result<T>> _ensureConnection<T>(Future<Result<T>> Function() body) async {
    if (!(await networkInfo.isConnected)) {
      return const Result.failure(Failure.offline());
    }
    try {
      return body();
    } on ServerException {
      return const Result.failure(Failure.server());
    }
  }
}
