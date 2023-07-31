import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wewear/presentation/modules/splash_page/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE2E2E2)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
