import 'package:fantastic/model/movie_feedback.dart';
import 'package:fantastic/store/store.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class MoviesListByGenreBloc {
  final MovieStore _store = MovieStore();
  final BehaviorSubject<MovieFeedback> _subject =
      BehaviorSubject<MovieFeedback>();

  getMoviesByGenre(int id) async {
    MovieFeedback feedback = await _store.getMovieByGenre(id);
    _subject.sink.add(feedback);
  }

  void drainStream() {
    _subject.value = null;
  }

  @mustCallSuper
  void dispose() async {
    await _subject.drain();
    _subject.close();
  }
  // dispose() {
  //   _subject.close();
  // }

  BehaviorSubject<MovieFeedback> get subject => _subject;
}

final moviesByGenreBloc = MoviesListByGenreBloc();
