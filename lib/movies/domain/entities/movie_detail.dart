import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final List<Genres> genresList;
  final int id;
  final String overView;
  final String releaseDate;
  final int runTime;
  final String title;
  final double voteAverage;

  const MovieDetails(
      {required this.backdropPath,
      required this.id,
      required this.genresList,
      required this.overView,
      required this.releaseDate,
      required this.runTime,
      required this.title,
      required this.voteAverage});

  @override
  List<Object> get props =>
      [backdropPath, id, overView, releaseDate, runTime, title, voteAverage,genresList];
}
