import 'package:fantastic/model/genre_feedback.dart';
import 'package:fantastic/model/movie_feedback.dart';
import 'package:fantastic/store/store.dart';
import 'package:rxdart/rxdart.dart';

class GenresListBloc {
  final MovieStore _store = MovieStore();
  final BehaviorSubject<GenreFeedback> _subject =
      BehaviorSubject<GenreFeedback>();

  getGenres() async {
    GenreFeedback feedback = await _store.getGenres();
    _subject.sink.add(feedback);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<GenreFeedback> get subject => _subject;
}

final genresBloc = GenresListBloc();
