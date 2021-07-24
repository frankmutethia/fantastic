import 'package:fantastic/model/movie_feedback.dart';
import 'package:fantastic/store/store.dart';
import 'package:rxdart/rxdart.dart';

class NowPlayingListBloc {
  final MovieStore _store = MovieStore();
  final BehaviorSubject<MovieFeedback> _subject =
      BehaviorSubject<MovieFeedback>();

  getMovies() async {
    MovieFeedback feedback = await _store.getPlayingMovies();
    _subject.sink.add(feedback);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieFeedback> get subject => _subject;
}

final nowPlayingMoviesBloc = NowPlayingListBloc();
