import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../features/movies/data/models/movie_model.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio();

  @preResolve
  @singleton
  Future<HiveInterface> get hive async {
    final docDir = await getApplicationDocumentsDirectory();
    return Hive
      ..init(docDir.path)
      ..registerAdapter<MovieModel>(MovieModelAdapter());
  }
}
