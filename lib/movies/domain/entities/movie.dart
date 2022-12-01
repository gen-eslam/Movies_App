import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overView;
  final double voteAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.overView,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object> get props =>
      [id, title, backdropPath, genreIds, overView, voteAverage, releaseDate];

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     super == other &&
  //         other is Movie &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         title == other.title &&
  //         backdropPath == other.backdropPath &&
  //         genreIds == other.genreIds &&
  //         overView == other.overView &&
  //         voteAverage == other.voteAverage &&
  //         releaseDate == other.releaseDate;
  //
  // @override
  // int get hashCode =>
  //     super.hashCode ^
  //     id.hashCode ^
  //     title.hashCode ^
  //     backdropPath.hashCode ^
  //     genreIds.hashCode ^
  //     overView.hashCode ^
  //     voteAverage.hashCode ^
  //     releaseDate.hashCode;
}
