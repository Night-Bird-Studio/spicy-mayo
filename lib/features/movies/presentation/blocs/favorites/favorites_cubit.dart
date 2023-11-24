import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/favorites_entity.dart';
import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/add_movie_to_favorite_use_case.dart';
import '../../../domain/usecases/get_favorites_movies_use_case.dart';
import '../../../domain/usecases/remove_movie_from_favorite_use_case.dart';

@injectable
class FavoritesCubit extends Cubit<FavoritesEntity> {
  FavoritesCubit({
    required this.addMovieToFavoriteUseCase,
    required this.removeMovieFromFavoriteUseCase,
    required this.getFavoritesMoviesUseCase,
  }) : super([]);

  final AddMovieToFavoriteUseCase addMovieToFavoriteUseCase;
  final RemoveMovieFromFavoriteUseCase removeMovieFromFavoriteUseCase;
  final GetFavoritesMoviesUseCase getFavoritesMoviesUseCase;

  Future<void> retrieveFavorite() async {
    final result = await getFavoritesMoviesUseCase();

    emit(
      result.when(
        success: (movies) => movies,
        failure: (_) => [],
      ),
    );
  }

  Future<void> addFavoriteMovie(MovieEntity movie) async {
    await addMovieToFavoriteUseCase(movie);
    await retrieveFavorite();
  }

  Future<void> removeFavoriteMovie(MovieEntity movie) async {
    await removeMovieFromFavoriteUseCase(movie);
    await retrieveFavorite();
  }
}
