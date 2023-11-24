import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../models/movie_model.dart';

@immutable
abstract interface class MovieLocalDataSource {
  Future<void> saveFavorite(MovieModel movie);

  Future<void> removeFavorite(MovieModel movie);

  Future<List<MovieModel>> retrieveFavorites();
}

@LazySingleton(as: MovieLocalDataSource)
final class MovieLocalDataSourceImpl implements MovieLocalDataSource {
  const MovieLocalDataSourceImpl({required this.hive});

  final HiveInterface hive;

  static const boxName = 'movie_box';

  @override
  Future<List<MovieModel>> retrieveFavorites() async {
    await hive.openBox<MovieModel>(boxName);
    final movieBox = hive.box<MovieModel>(boxName);
    return movieBox.values.toList();
  }

  @override
  Future<void> saveFavorite(MovieModel movie) async {
    await hive.openBox<MovieModel>(boxName);
    final movieBox = hive.box<MovieModel>(boxName);
    await movieBox.put(movie.id, movie);
  }

  @override
  Future<void> removeFavorite(MovieModel movie) async {
    await hive.openBox<MovieModel>(boxName);
    final movieBox = hive.box<MovieModel>(boxName);
    await movieBox.delete(movie.id);
  }
}
