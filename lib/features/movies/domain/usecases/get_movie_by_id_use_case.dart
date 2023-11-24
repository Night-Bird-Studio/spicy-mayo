import 'package:injectable/injectable.dart';

import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/movie_entity.dart';
import '../repositories/movie_repository.dart';

@lazySingleton
class GetMovieByIdUseCase implements UseCase<MovieEntity, GetMovieByIdUseCaseParams> {
  const GetMovieByIdUseCase(this.repository);

  final MovieRepository repository;

  @override
  Future<Result<MovieEntity>> call(GetMovieByIdUseCaseParams params) async =>
      repository.byId(params.id, params.locale);
}

class GetMovieByIdUseCaseParams {
  const GetMovieByIdUseCaseParams({
    required this.id,
    required this.locale,
  });

  final int id;
  final String locale;
}
