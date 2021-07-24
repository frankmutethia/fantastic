import 'package:fantastic/model/movie.dart';

class MovieFeedback {
  final List<Movie> movies;
  final String error;

  MovieFeedback(this.movies, this.error);

  MovieFeedback.fromJson(Map<String, dynamic> json)
      : movies = (json["results"] as List)
            .map((i) => new Movie.fromJson(i))
            .toList(),
        error = "";

  MovieFeedback.withError(String errorValue)
      : movies = List(),
        error = errorValue;
}
