import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:socle/features/movies/data/models/movie_model.dart';
import 'package:socle/features/movies/domain/entities/movie_entity.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const movieModel = MovieModel(
    id: 760161,
    overview:
        'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
    posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
    ratingAverage: 6.818,
    ratingCount: 1036,
    title: 'Esther 2 : Les Origines',
  );

  const movieEntity = MovieEntity(
    id: 760161,
    overview:
        'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
    posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
    ratingAverage: 6.818,
    ratingCount: 1036,
    title: 'Esther 2 : Les Origines',
  );

  group('fromJson', () {
    test(
      'should return a valid model when a valid JSON is parsed',
      () async {
        // Arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('features/movies/movie.json'));
        // Act
        final result = MovieModel.fromJson(jsonMap);
        // Assert
        expect(result, movieModel);
      },
    );
  });

  group('fromDomain', () {
    test(
      'should return a model',
      () async {
        // Arrange

        // Act
        final result = MovieModel.fromDomain(movieEntity);
        // Assert
        expect(result, movieModel);
      },
    );
  });

  group('toDomain', () {
    test(
      'should return an entity',
      () async {
        // Arrange

        // Act
        final result = movieModel.toDomain();
        // Assert
        expect(result, movieEntity);
      },
    );
  });
}
