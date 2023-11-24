import 'package:injectable/injectable.dart';

import '../../../../core/domain/entities/result.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/movie_entity.dart';
import '../repositories/movie_repository.dart';

@lazySingleton
class GetFavoritesMoviesUseCase implements UseCaseWithoutParams<List<MovieEntity>> {
  const GetFavoritesMoviesUseCase({required this.repository});

  final MovieRepository repository;

  @override
  Future<Result<List<MovieEntity>>> call() => repository.favorites();
}
