// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _Counter, Store {
  final _$pointsAtom = Atom(name: '_Counter.points');

  @override
  int get points {
    _$pointsAtom.reportRead();
    return super.points;
  }

  @override
  set points(int value) {
    _$pointsAtom.reportWrite(value, super.points, () {
      super.points = value;
    });
  }

  final _$percentAtom = Atom(name: '_Counter.percent');

  @override
  double get percent {
    _$percentAtom.reportRead();
    return super.percent;
  }

  @override
  set percent(double value) {
    _$percentAtom.reportWrite(value, super.percent, () {
      super.percent = value;
    });
  }

  final _$percentTextAtom = Atom(name: '_Counter.percentText');

  @override
  int get percentText {
    _$percentTextAtom.reportRead();
    return super.percentText;
  }

  @override
  set percentText(int value) {
    _$percentTextAtom.reportWrite(value, super.percentText, () {
      super.percentText = value;
    });
  }

  final _$_CounterActionController = ActionController(name: '_Counter');

  @override
  dynamic incrementPoints() {
    final _$actionInfo = _$_CounterActionController.startAction(
        name: '_Counter.incrementPoints');
    try {
      return super.incrementPoints();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementPercent() {
    final _$actionInfo = _$_CounterActionController.startAction(
        name: '_Counter.incrementPercent');
    try {
      return super.incrementPercent();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementpercentText() {
    final _$actionInfo = _$_CounterActionController.startAction(
        name: '_Counter.incrementpercentText');
    try {
      return super.incrementpercentText();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
points: ${points},
percent: ${percent},
percentText: ${percentText}
    ''';
  }
}
