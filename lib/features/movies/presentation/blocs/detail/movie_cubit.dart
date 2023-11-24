import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_movie_by_id_use_case.dart';

part 'movie_cubit.freezed.dart';

part 'movie_state.dart';

@injectable
class MovieCubit extends Cubit<MovieState> {
  MovieCubit({required this.movieByIdUseCase}) : super(const MovieState.loading());

  final GetMovieByIdUseCase movieByIdUseCase;

  Future<void> getMovie(int id, String locale) async {
    emit(const MovieState.loading());
    final result = await movieByIdUseCase(GetMovieByIdUseCaseParams(id: id, locale: locale));

    emit(
      result.when(
        success: (movie) => MovieState.loaded(movie: movie),
        failure: (_) => const MovieState.error(),
      ),
    );
  }
}
