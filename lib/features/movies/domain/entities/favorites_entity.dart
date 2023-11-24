import 'movie_entity.dart';

typedef FavoritesEntity = List<MovieEntity>;

extension FavoritesEntityX on FavoritesEntity {
  bool isFavorite(MovieEntity movie) => contains(movie);
}
