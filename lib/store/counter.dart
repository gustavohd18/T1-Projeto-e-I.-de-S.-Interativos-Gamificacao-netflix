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

  @action
  incrementPoints() {
    print("multipliquei pontos");
    print(points);
    points++;
  }

  @action
  incrementPercent() {
    print("multipliquei porcentagem");
    print(percent);
    percent = percent + 0.25;
  }

  @action
  incrementpercentText() {
    print("multipliquei porcentagem texto");
    print(percentText);
    percentText = percentText + 25;
  }
}
