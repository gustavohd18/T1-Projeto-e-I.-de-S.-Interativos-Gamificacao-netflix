import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int points = 0;

  @observable
  double percent = 0.0;

  @observable
  int percentText = 0;

  @computed
  int get totPoints => points;

  @computed
  bool get isScene => (points == 4);

  @computed
  bool get isBast => (points >= 3);

  @action
  incrementPoints() {
    if (points > 4) {
      points = 0;
      return;
    } else {
      points++;
    }
  }

  @action
  incrementPercent() {
    if (percent > 1.0) {
      percent = 0.0;
      return;
    } else {
      percent = percent + 0.25;
    }
  }

  @action
  incrementpercentText() {
    if (percentText > 100) {
      percentText = 0;
      return;
    } else {
      percentText = percentText + 25;
    }
  }
}
