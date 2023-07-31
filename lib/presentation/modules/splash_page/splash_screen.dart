import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wewear/presentation/modules/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();

    _timer = Timer(
      const Duration(milliseconds: 1000),
      loginRoute,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  loginRoute() {

    Get.to(() => HomePage(), transition: Transition.fade);
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,

      height: 100,
      // width: double.infinity,
      decoration: const BoxDecoration(
          // color: Color(0xFFE2E2E2)
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      // padding: const EdgeInsets.only(
      //   bottom: 120,
      // ),
      child: AnimatedBuilder(
        animation: _animationController,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/app_logo.png"),
              height: 300,
            ),
          ],
        ),
        builder: (context, child) => SlideTransition(
          position: Tween(
            begin: const Offset(0, 0.3),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(
              parent: _animationController,
              curve: Curves.easeOut,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
