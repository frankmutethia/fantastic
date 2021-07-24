import 'package:fantastic/model/genre.dart';

class GenreFeedback {
  final List<Genre> genres;
  final String error;

  GenreFeedback(this.genres, this.error);

  GenreFeedback.fromJson(Map<String, dynamic> json)
      : genres =
            (json["genres"] as List).map((i) => new Genre.fromJson(i)).toList(),
        error = "";

  GenreFeedback.withError(String errorValue)
      : genres = List(),
        error = errorValue;
}
