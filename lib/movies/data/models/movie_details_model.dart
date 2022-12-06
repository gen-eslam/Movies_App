import 'package:movieapp/movies/data/models/genres_model.dart';
import 'package:movieapp/movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.genresList,
      required super.overView,
      required super.releaseDate,
      required super.runTime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
          backdropPath: json['backdrop_path'],
          id: json['id'],
          genresList: List<GenresModel>.from(
              json['genres'].map((e) => GenresModel.fromJson(e))),
          overView: json['overview'],
          releaseDate: json['release_date'],
          runTime: json['runtime'],
          title: json['title'],
          voteAverage: json['vote_average'].toDouble());
}
