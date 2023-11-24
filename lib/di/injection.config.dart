// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/app_network_info.dart' as _i3;
import '../core/presentation/blocs/navigation/navigation_cubit.dart' as _i10;
import '../features/movies/data/datasources/movie_local_data_source.dart'
    as _i6;
import '../features/movies/data/datasources/movie_remote_data_source.dart'
    as _i7;
import '../features/movies/data/repositories/movie_repository_impl.dart' as _i9;
import '../features/movies/domain/repositories/movie_repository.dart' as _i8;
import '../features/movies/domain/usecases/add_movie_to_favorite_use_case.dart'
    as _i12;
import '../features/movies/domain/usecases/get_favorites_movies_use_case.dart'
    as _i13;
import '../features/movies/domain/usecases/get_movie_by_id_use_case.dart'
    as _i14;
import '../features/movies/domain/usecases/get_movies_by_page_use_case.dart'
    as _i15;
import '../features/movies/domain/usecases/remove_movie_from_favorite_use_case.dart'
    as _i11;
import '../features/movies/presentation/blocs/detail/movie_cubit.dart' as _i16;
import '../features/movies/presentation/blocs/favorites/favorites_cubit.dart'
    as _i18;
import '../features/movies/presentation/blocs/list/movie_list_cubit.dart'
    as _i17;
import 'register_module.dart' as _i19;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppNetworkInfo>(const _i3.AppNetworkInfoImpl());
  gh.singleton<_i4.Dio>(registerModule.dio);
  await gh.singletonAsync<_i5.HiveInterface>(
    () => registerModule.hive,
    preResolve: true,
  );
  gh.lazySingleton<_i6.MovieLocalDataSource>(
      () => _i6.MovieLocalDataSourceImpl(hive: gh<_i5.HiveInterface>()));
  gh.lazySingleton<_i7.MovieRemoteDataSource>(
      () => _i7.MovieRemoteDataSourceImpl(dio: gh<_i4.Dio>()));
  gh.lazySingleton<_i8.MovieRepository>(() => _i9.MovieRepositoryImpl(
        movieRemoteDataSource: gh<_i7.MovieRemoteDataSource>(),
        movieLocalDataSource: gh<_i6.MovieLocalDataSource>(),
        networkInfo: gh<_i3.AppNetworkInfo>(),
      ));
  gh.factory<_i10.NavigationCubit>(() => _i10.NavigationCubit());
  gh.lazySingleton<_i11.RemoveMovieFromFavoriteUseCase>(() =>
      _i11.RemoveMovieFromFavoriteUseCase(
          repository: gh<_i8.MovieRepository>()));
  gh.lazySingleton<_i12.AddMovieToFavoriteUseCase>(() =>
      _i12.AddMovieToFavoriteUseCase(repository: gh<_i8.MovieRepository>()));
  gh.lazySingleton<_i13.GetFavoritesMoviesUseCase>(() =>
      _i13.GetFavoritesMoviesUseCase(repository: gh<_i8.MovieRepository>()));
  gh.lazySingleton<_i14.GetMovieByIdUseCase>(
      () => _i14.GetMovieByIdUseCase(gh<_i8.MovieRepository>()));
  gh.lazySingleton<_i15.GetMoviesByPageUseCase>(
      () => _i15.GetMoviesByPageUseCase(gh<_i8.MovieRepository>()));
  gh.factory<_i16.MovieCubit>(
      () => _i16.MovieCubit(movieByIdUseCase: gh<_i14.GetMovieByIdUseCase>()));
  gh.factory<_i17.MovieListCubit>(() =>
      _i17.MovieListCubit(moviesByPage: gh<_i15.GetMoviesByPageUseCase>()));
  gh.factory<_i18.FavoritesCubit>(() => _i18.FavoritesCubit(
        addMovieToFavoriteUseCase: gh<_i12.AddMovieToFavoriteUseCase>(),
        removeMovieFromFavoriteUseCase:
            gh<_i11.RemoveMovieFromFavoriteUseCase>(),
        getFavoritesMoviesUseCase: gh<_i13.GetFavoritesMoviesUseCase>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i19.RegisterModule {}
