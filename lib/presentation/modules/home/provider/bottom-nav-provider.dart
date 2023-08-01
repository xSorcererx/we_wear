import 'package:flutter_riverpod/flutter_riverpod.dart';

final navProvider = StateProvider<int>((ref) => 0);

final splashProvider = StateProvider<bool>((ref) => true);
