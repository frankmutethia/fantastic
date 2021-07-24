import 'package:fantastic/model/individual.dart';

class IndividualFeedback {
  final List<Individual> individuals;
  final String error;

  IndividualFeedback(this.individuals, this.error);

  IndividualFeedback.fromJson(Map<String, dynamic> json)
      : individuals = (json["results"] as List)
            .map((i) => new Individual.fromJson(i))
            .toList(),
        error = "";

  IndividualFeedback.withError(String errorValue)
      : individuals = List(),
        error = errorValue;
}
