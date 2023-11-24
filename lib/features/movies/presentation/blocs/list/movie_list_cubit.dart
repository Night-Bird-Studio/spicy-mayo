import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_movies_by_page_use_case.dart';

part 'movie_list_cubit.freezed.dart';
part 'movie_list_state.dart';

@injectable
class MovieListCubit extends Cubit<MovieListState> {
  MovieListCubit({required this.moviesByPage}) : super(const MovieListState.loading());

  final GetMoviesByPageUseCase moviesByPage;

  Future<void> getMovies(String locale) async {
    emit(const MovieListState.loading());
    final result = await moviesByPage(GetMoviesByPageUseCaseParams(page: 1, locale: locale));

    result.when(
      success: (pageOfMovies) {
        emit(MovieListState.loaded(movies: pageOfMovies.results, page: 1, totalPage: pageOfMovies.totalPages));
      },
      failure: (failure) {
        emit(const MovieListState.error());
      },
    );
  }

  Future<void> next(String locale) async {
    state.whenOrNull(
      loaded: (movies, page, totalPage) async {
        final nextPage = page + 1;

        if (nextPage == totalPage) {
          return;
        }

        final result = await moviesByPage(GetMoviesByPageUseCaseParams(page: nextPage, locale: locale));

        result.whenOrNull(
          success: (pageOfMovies) {
            emit(
              MovieListState.loaded(
                movies: [
                  ...movies,
                  ...pageOfMovies.results,
                ],
                page: nextPage,
                totalPage: pageOfMovies.totalPages,
              ),
            );
          },
        );
      },
    );
  }
}
