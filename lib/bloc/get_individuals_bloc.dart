import 'package:fantastic/model/individual_feedback.dart';
import 'package:fantastic/store/store.dart';
import 'package:rxdart/rxdart.dart';

class IndividualsListBloc {
  final MovieStore _store = MovieStore();
  final BehaviorSubject<IndividualFeedback> _subject =
      BehaviorSubject<IndividualFeedback>();

  getPersons() async {
    IndividualFeedback feedback = await _store.getPersons();
    _subject.sink.add(feedback);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<IndividualFeedback> get subject => subject;
}

final personsBloc = IndividualsListBloc;
