import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/core/utils/enum.dart';
import 'package:movieapp/movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movies_event.dart';
import 'package:movieapp/movies/presentation/controller/movies_state.dart';

import '../../../core/usecase/base_usecase.dart';
import '../../domain/usecase/get_popular_movies_usecase.dart';
import '../../domain/usecase/get_top_rated_movies_usecase.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUsesCase getPopularMoviesUsesCase;
  final GetTopRatedMoviesUsesCase getTopRatedMoviesUsesCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUsesCase,
      this.getTopRatedMoviesUsesCase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(GetNowPlayingMoviesEvent event,
      Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    result.fold(
            (l) =>
            emit(state.copyWith(
              nowPlayingState: RequestState.error,
              nowPlayingMessage: l.message,
            )),
            (r) =>
            emit(state.copyWith(
              nowPlayingState: RequestState.loaded,
              nowPlayingMovies: r,
            )));
  }

  FutureOr<void> _getPopularMovies(GetPopularMoviesEvent event,
      Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUsesCase(const NoParameters());
    result.fold(
            (l) =>
            emit(state.copyWith(
              popularState: RequestState.error,
              popularMessage: l.message,
            )),
            (r) =>
            emit(state.copyWith(
              popularState: RequestState.loaded,
              popularMovies: r,
            )));
  }

  FutureOr<void> _getTopRatedMovies(GetTopRatedMoviesEvent event,
      Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUsesCase(const NoParameters());
    result.fold(
            (l) =>
            emit(state.copyWith(
              topRatedState: RequestState.error,
              topRatedMessage: l.message,
            )),
            (r) =>
            emit(state.copyWith(
              topRatedState: RequestState.loaded,
              topRatedMovies: r,
            )));
  }
}
