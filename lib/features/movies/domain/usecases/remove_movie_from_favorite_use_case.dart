import 'package:injectable/injectable.dart';

import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/movie_entity.dart';
import '../repositories/movie_repository.dart';

@lazySingleton
class RemoveMovieFromFavoriteUseCase implements UseCase<void, MovieEntity> {
  const RemoveMovieFromFavoriteUseCase({required this.repository});

  final MovieRepository repository;

  @override
  Future<Result<void>> call(MovieEntity movie) => repository.removeFromFavorite(movie);
}
