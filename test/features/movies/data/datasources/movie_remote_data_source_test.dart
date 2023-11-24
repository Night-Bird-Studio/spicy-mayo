import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:socle/core/constants/api_constants.dart';
import 'package:socle/features/movies/data/datasources/movie_remote_data_source.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'assets/cfg/app_settings');

  late Dio dio;
  late DioAdapter adapter;
  late MovieRemoteDataSource datasource;

  setUp(() {
    dio = Dio();
    adapter = DioAdapter(dio: dio);
    datasource = MovieRemoteDataSourceImpl(dio: dio);
  });

  group('getMovies', () {
    final resultsJson = json.decode(fixture('features/movies/movies.json'));

    const page = 1;
    const locale = 'fr';

    test('Should get movies list', () async {
      // arrange
      final route = dotenv.get('api_base_url') + ApiConstants.popularMoviesPath;
      adapter.onGet(
        route,
        queryParameters: {
          'api_key': dotenv.get('api_key'),
          'language': locale,
          'page': page,
        },
        (request) => request.reply(200, resultsJson),
      );

      // act
      final result = await datasource.getMoviesByPage(page, locale);

      // assert
      expect(result, resultsJson);
    });
  });

  group('getMovieById', () {
    final resultsJson = json.decode(fixture('features/movies/movie.json'));

    const locale = 'fr';
    const movieId = 760161;

    test('Should get single movie', () async {
      // arrange
      final route = dotenv.get('api_base_url') + ApiConstants.moviePath(movieId);
      adapter.onGet(
        route,
        queryParameters: {
          'api_key': dotenv.get('api_key'),
          'language': locale,
        },
        (request) => request.reply(200, resultsJson),
      );

      // act
      final result = await datasource.getMovieById(movieId, locale);

      // assert
      expect(result, resultsJson);
    });
  });
}
