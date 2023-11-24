import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/route_list.dart';
import '../../../../core/extension/context.dart';
import '../../domain/entities/favorites_entity.dart';
import '../../domain/entities/movie_entity.dart';
import '../blocs/favorites/favorites_cubit.dart';
import '../widgets/movie_list_widget.dart';
import 'movie_detail_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => FavoritesPageState();
}

class FavoritesPageState extends State<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    context.read<FavoritesCubit>().retrieveFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesEntity>(
      builder: (context, state) {
        return state.isEmpty
            ? Center(child: Text(context.translate().emptyFavorite))
            : MovieListWidget(
                movies: state,
                onMovieClicked: _onMovieClicked,
                onRefresh: () => context.read<FavoritesCubit>().retrieveFavorite(),
              );
      },
    );
  }

  void _onMovieClicked(MovieEntity movie) async {
    await GoRouter.of(context).pushNamed(
      RouteNames.movieDetail,
      pathParameters: {
        'id': '${movie.id}',
      },
      extra: MovieDetailPageArgs(
        title: movie.title,
        movieId: movie.id,
        locale: context.currentLocale(),
      ),
    );
    context.read<FavoritesCubit>().retrieveFavorite();
  }
}
