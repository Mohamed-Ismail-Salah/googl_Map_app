import 'dart:async';
import 'package:deliveryapp/core/utils/app_router.dart';
import 'package:deliveryapp/features/Splash/presention/view/widgets/animationImage_widget.dart';
 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      context.pushReplacement(AppRouter.kOrderStart);
    });
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<Offset>(
      begin: const Offset(-1.5, 0.0), // Start from outside the screen
      end: const Offset(0.0, 0.0), // Move to the center of the screen
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primerColor,
      body: AnimationImageWidget(animation: _animation),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
