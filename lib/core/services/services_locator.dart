import 'package:get_it/get_it.dart';
import 'package:movieapp/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movieapp/movies/data/repository/movies_repository.dart';
import 'package:movieapp/movies/domain/repository/base_movies_repositorys.dart';
import 'package:movieapp/movies/domain/usecase/get_movies_details_usecase.dart';
import 'package:movieapp/movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movieapp/movies/domain/usecase/get_recommendation_usecase.dart';
import 'package:movieapp/movies/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movie_details_bloc.dart';
import 'package:movieapp/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUsesCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUsesCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

    ///Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    ///DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());

    /// Bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));
  }
}
