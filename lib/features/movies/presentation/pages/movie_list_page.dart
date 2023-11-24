import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/route_list.dart';
import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../../domain/entities/movie_entity.dart';
import '../blocs/favorites/favorites_cubit.dart';
import '../blocs/list/movie_list_cubit.dart';
import '../widgets/movie_list_widget.dart';
import 'movie_detail_page.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => MovieListPageState();
}

class MovieListPageState extends State<MovieListPage> {
  @override
  void initState() {
    context.read<MovieListCubit>().getMovies('fr');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieListCubit, MovieListState>(
      builder: (context, state) {
        return state.when(
          loading: () => const LoadingWidget(),
          error: () => Center(child: Text(context.translate().error)),
          loaded: (movies, page, totalPage) {
            return MovieListWidget(
              movies: movies,
              page: page,
              onMovieClicked: _onMovieClicked,
              onRefresh: () => context
                  .read<MovieListCubit>()
                  .getMovies(context.currentLocale()),
              onNextPage: () =>
                  context.read<MovieListCubit>().next(context.currentLocale()),
            );
          },
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
