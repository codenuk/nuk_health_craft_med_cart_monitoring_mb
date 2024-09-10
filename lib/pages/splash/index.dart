import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:health_craft_med_cart_monitoring_mb/main.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2), () async {
        context.go('/login');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).appColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
                  child: Lottie.asset("assets/lotties/health.json", width: 250))
              .animate()
              .fadeIn(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut)
              .slide(
                begin: const Offset(-0.1, 0),
                end: const Offset(0, 0),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              ),
          SizedBox(
            child: Image.asset(
              "assets/logos/logo.png",
              width: 160,
            ),
          )
              .animate()
              .fadeIn(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeInOut)
              .slide(
                begin: const Offset(0.1, 0),
                end: const Offset(0, 0),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              ),
        ],
      ),
    );
  }
}
