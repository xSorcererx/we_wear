import 'package:flutter_riverpod/flutter_riverpod.dart';

final countProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(1);
  void increment() => state++;
  void decrement() => state--;
}
