import 'package:dio/dio.dart';
import 'package:fantastic/model/genre_feedback.dart';
import 'package:fantastic/model/individual_feedback.dart';
import 'package:fantastic/model/movie_feedback.dart';
import 'package:flutter/material.dart';

class MovieStore {
  final String apiKey = "9c876a4f0e3552f73edb96a3c16b8aee";
  static String mainUrl = "https://api.themoviedb.org/3"; // recheck
  final Dio _dio = Dio(); //recheck
  var getPopularUrl = '$mainUrl/movie/top_rated';
  var getMoviesUrl = '$mainUrl/discover/movie';
  var getPlayingUrl = '$mainUrl/movie/now_playing';
  var getGenresUrl = "$mainUrl/genre/movie/list";
  var getPersonsUrl = "$mainUrl/trending/person/week";
  // var movieUrl = "$mainUrl/movie/list";
  Future<MovieFeedback> getMovies() async {
    var params = {
      "api_key": apiKey,
      " language": "en-US",
      "page:": 1,
    };
    try {
      Response response =
          await _dio.get(getPopularUrl, queryParameters: params);
      return MovieFeedback.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieFeedback.withError("$error");
    }
  }

  Future<MovieFeedback> getPlayingMovies() async {
    var params = {
      "api_key": apiKey,
      " language": "en-US",
      "page:": 1,
    };
    try {
      Response response =
          await _dio.get(getPlayingUrl, queryParameters: params);
      return MovieFeedback.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieFeedback.withError("$error");
    }
  }

  Future<GenreFeedback> getGenres() async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page:": 1,
    };
    try {
      Response response = await _dio.get(getGenresUrl, queryParameters: params);
      return GenreFeedback.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return GenreFeedback.withError("$error");
    }
  }

  Future<IndividualFeedback> getPersons() async {
    var params = {"api_key": apiKey};
    try {
      Response response =
          await _dio.get(getPersonsUrl, queryParameters: params);
      return IndividualFeedback.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return IndividualFeedback.withError("$error");
    }
  }

  Future<MovieFeedback> getMovieByGenre(int id) async {
    var params = {
      "api_key": apiKey,
      "language": "en-US",
      "page": 1,
      "with_genres": id,
    };
    try {
      Response response = await _dio.get(getMoviesUrl, queryParameters: params);
      return MovieFeedback.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieFeedback.withError("$error");
    }
  }

  // Future<MovieFeedback> getMovieDetail(int id) async {
  //   var params = {
  //     "api_key": apiKey,
  //     "language": "en-US",
  //   };
  //   try {
  //     Response response = await _dio.get(getMoviesUrl, queryParameters: params);
  //     return MovieFeedback.fromJson(response.data);
  //   } catch (error, stacktrace) {
  //     print("Exception occured: $error stackTrace: $stacktrace");
  //     return MovieFeedback.withError("$error");
  //   }
  // }
}
