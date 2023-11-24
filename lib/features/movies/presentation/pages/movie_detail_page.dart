import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../../../../core/presentation/widgets/top_bar.dart';
import '../../domain/entities/favorites_entity.dart';
import '../blocs/detail/movie_cubit.dart';
import '../blocs/favorites/favorites_cubit.dart';
import '../widgets/movie_widget.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({
    required this.movieDetailPageArgs,
    super.key,
  });

  final MovieDetailPageArgs movieDetailPageArgs;

  @override
  State<MovieDetailPage> createState() => MovieDetailPageState();
}

class MovieDetailPageState extends State<MovieDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<MovieCubit>().getMovie(widget.movieDetailPageArgs.movieId, widget.movieDetailPageArgs.locale);
    context.read<FavoritesCubit>().retrieveFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesEntity>(
      builder: (context, favorites) {
        return BlocBuilder<MovieCubit, MovieState>(
          builder: (context, state) => Scaffold(
            appBar: TopBar(
              title: Text(widget.movieDetailPageArgs.title),
              trailing: state.whenOrNull(
                loaded: (movie) => IconButton(
                  icon: favorites.contains(movie) ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
                  onPressed: () {
                    if (favorites.contains(movie)) {
                      context.read<FavoritesCubit>().removeFavoriteMovie(movie);
                    } else {
                      context.read<FavoritesCubit>().addFavoriteMovie(movie);
                    }
                  },
                ),
              ),
            ),
            body: state.when(
              loading: () => const LoadingWidget(),
              error: () => Center(
                child: Text(context.translate().error),
              ),
              loaded: (movie) => MovieWidget(movie: movie),
            ),
          ),
        );
      },
    );
  }
}

class MovieDetailPageArgs {
  const MovieDetailPageArgs({
    required this.title,
    required this.movieId,
    required this.locale,
  });

  final int movieId;
  final String title;
  final String locale;
}
