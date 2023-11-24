import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/constants/env.dart';
import '../../../../core/data/datasources/remote_data_source.dart';

@immutable
abstract interface class MovieRemoteDataSource {
  Future<dynamic> getMoviesByPage(int page, String locale);

  Future<dynamic> getMovieById(int id, String locale);
}

@LazySingleton(as: MovieRemoteDataSource)
final class MovieRemoteDataSourceImpl extends RemoteDataSource implements MovieRemoteDataSource {
  MovieRemoteDataSourceImpl({required super.dio});

  @override
  Future getMovieById(int id, String locale) {
    return performGetRequestApi(
      apiEndpoint: ApiConstants.moviePath(id),
      queryParameters: {
        'api_key': Env.apiKey,
        'language': locale,
      },
    );
  }

  @override
  Future getMoviesByPage(int page, String locale) {
    return performGetRequestApi(
      apiEndpoint: ApiConstants.popularMoviesPath,
      queryParameters: {
        'api_key': Env.apiKey,
        'language': locale,
        'page': page,
      },
    );
  }
}
