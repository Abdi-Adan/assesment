import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/routes/routes.dart';
import 'package:spraxa_tech_assesment/splash/splash_screen.dart';

class AppRouterGenerator {
  static Route<dynamic>? generateRoute(RouteSettings? settings) {
    // final dynamic args = settings?.arguments;

    switch (settings?.name) {
      case splashScreenTwoRoute:
        return MaterialPageRoute<SplashScreen>(
            builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute<SplashScreen>(
            builder: (_) => const SplashScreen());
    }
  }
}
