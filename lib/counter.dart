import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;
  /*
  final Observable _count = Observable(0);
  int get count => _count.value;
  */

  @action
  void increment() {
    count++;
  }

  /*
  Counter() {
    increment = Action(_increment);
  }

  late Action increment;
  void _increment() {
    _count.value++;
  }
  */
}