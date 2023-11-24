import 'package:injectable/injectable.dart';

import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/page_of_movies_entity.dart';
import '../repositories/movie_repository.dart';

@lazySingleton
class GetMoviesByPageUseCase implements UseCase<PageOfMoviesEntity, GetMoviesByPageUseCaseParams> {
  const GetMoviesByPageUseCase(this.repository);

  final MovieRepository repository;

  @override
  Future<Result<PageOfMoviesEntity>> call(GetMoviesByPageUseCaseParams params) async =>
      repository.byPage(params.page, params.locale);
}

class GetMoviesByPageUseCaseParams {
  const GetMoviesByPageUseCaseParams({
    required this.page,
    required this.locale,
  });

  final int page;
  final String locale;
}
