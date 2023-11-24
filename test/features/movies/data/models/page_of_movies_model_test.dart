import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:socle/features/movies/data/models/movie_model.dart';
import 'package:socle/features/movies/data/models/page_of_movies_model.dart';
import 'package:socle/features/movies/domain/entities/movie_entity.dart';
import 'package:socle/features/movies/domain/entities/page_of_movies_entity.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const pageOfMoviesModel = PageOfMoviesModel(
    page: 1,
    totalPages: 35500,
    totalResults: 709985,
    results: [
      MovieModel(
        id: 760161,
        overview:
            'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
        posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
        ratingAverage: 6.818,
        ratingCount: 1036,
        title: 'Esther 2 : Les Origines',
      ),
      MovieModel(
        id: 575322,
        overview:
            'Dans un futur proche… Après des siècles d\'errance environnementale, les jours de la Terre sont comptés. Avec elle, c\'est l\'espèce humaine qui est menacée d\'extinction. Mais l\'espoir renaît lorsqu\'un jeune scientifique dévoile un procédé révolutionnaire de terraformation, qui ouvre la voie vers la colonisation de nouvelles planètes. Un groupe d\'élite de tous bords et de toutes nationalités est constitué. Sa mission : prendre les commandes du fleuron de la flotte internationale, et partir en quête d\'un nouveau foyer pour l\'humanité. Naviguant vers l\'inconnu, ces nouveaux explorateurs sont alors loin d\'imaginer les immenses dangers qui les guettent.',
        posterPath: '/ssbDfH9xN857NyfJDgR9kfKFMBe.jpg',
        ratingAverage: 5.5,
        ratingCount: 92,
        title: 'Project Gemini',
      ),
      MovieModel(
        id: 985939,
        overview:
            'Pour les meilleurs amis Becky et Hunter, la vie consiste à vaincre ses peurs et à repousser ses limites. Mais après avoir grimpé à 2 000 pieds au sommet d\'une tour de radio isolée et abandonnée, elles se retrouvent bloquées sans aucun moyen de descendre. Maintenant, les compétences expertes en escalade de Becky et Hunter seront mises à l\'épreuve ultime alors qu\'elle se battent désespérément pour survivre aux éléments, au manque de fournitures et aux hauteurs vertigineuses.',
        posterPath: '/spCAxD99U1A6jsiePFoqdEcY0dG.jpg',
        ratingAverage: 7.4,
        ratingCount: 1456,
        title: 'Fall',
      )
    ],
  );

  const pageOfMoviesEntity = PageOfMoviesEntity(
    page: 1,
    totalPages: 35500,
    totalResults: 709985,
    results: [
      MovieEntity(
        id: 760161,
        overview:
        'Après s\'être échappée d\'un établissement psychiatrique estonien, Leena Klammer se rend en Amérique en se faisant passer pour Esther, la fille disparue d\'une riche famille. Mais lorsque son masque commence à tomber, elle se retrouve face à une mère qui veut à tout prix protéger sa famille de l\'"enfant" meurtrière.',
        posterPath: '/7JDROXsXbp1MBrtG2GRAN7hmRfE.jpg',
        ratingAverage: 6.818,
        ratingCount: 1036,
        title: 'Esther 2 : Les Origines',
      ),
      MovieEntity(
        id: 575322,
        overview:
        'Dans un futur proche… Après des siècles d\'errance environnementale, les jours de la Terre sont comptés. Avec elle, c\'est l\'espèce humaine qui est menacée d\'extinction. Mais l\'espoir renaît lorsqu\'un jeune scientifique dévoile un procédé révolutionnaire de terraformation, qui ouvre la voie vers la colonisation de nouvelles planètes. Un groupe d\'élite de tous bords et de toutes nationalités est constitué. Sa mission : prendre les commandes du fleuron de la flotte internationale, et partir en quête d\'un nouveau foyer pour l\'humanité. Naviguant vers l\'inconnu, ces nouveaux explorateurs sont alors loin d\'imaginer les immenses dangers qui les guettent.',
        posterPath: '/ssbDfH9xN857NyfJDgR9kfKFMBe.jpg',
        ratingAverage: 5.5,
        ratingCount: 92,
        title: 'Project Gemini',
      ),
      MovieEntity(
        id: 985939,
        overview:
        'Pour les meilleurs amis Becky et Hunter, la vie consiste à vaincre ses peurs et à repousser ses limites. Mais après avoir grimpé à 2 000 pieds au sommet d\'une tour de radio isolée et abandonnée, elles se retrouvent bloquées sans aucun moyen de descendre. Maintenant, les compétences expertes en escalade de Becky et Hunter seront mises à l\'épreuve ultime alors qu\'elle se battent désespérément pour survivre aux éléments, au manque de fournitures et aux hauteurs vertigineuses.',
        posterPath: '/spCAxD99U1A6jsiePFoqdEcY0dG.jpg',
        ratingAverage: 7.4,
        ratingCount: 1456,
        title: 'Fall',
      )
    ],
  );

  group('fromJson', () {
    test(
      'should return a valid model when a valid JSON is parsed',
      () async {
        // Arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('features/movies/movies.json'));
        // Act
        final result = PageOfMoviesModel.fromJson(jsonMap);
        // Assert
        expect(result, pageOfMoviesModel);
      },
    );
  });

  group('fromDomain', () {
    test(
      'should return a model',
      () async {
        // Arrange

        // Act
        final result = PageOfMoviesModel.fromDomain(pageOfMoviesEntity);
        // Assert
        expect(result, pageOfMoviesModel);
      },
    );
  });

  group('toDomain', () {
    test(
      'should return an entity',
      () async {
        // Arrange

        // Act
        final result = pageOfMoviesModel.toDomain();
        // Assert
        expect(result, pageOfMoviesEntity);
      },
    );
  });
}
