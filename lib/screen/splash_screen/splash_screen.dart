import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortzz/common/widget/theme_blur_bg.dart';
import 'package:shortzz/screen/splash_screen/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      body: Stack(
        children: [
          const ThemeBlurBg(),
          Image.asset(
            "assets/images/light.gif",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
