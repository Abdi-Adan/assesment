import 'package:async_redux/async_redux.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spraxa_tech_assesment/routes/route_generator.dart';
import 'package:spraxa_tech_assesment/routes/routes.dart';
import 'package:spraxa_tech_assesment/splash/splash_screen.dart';

final GlobalKey<NavigatorState> globalAppNavigatorKey =
    GlobalKey<NavigatorState>();

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  NavigateAction.setNavigatorKey(globalAppNavigatorKey);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: globalAppNavigatorKey,
      navigatorObservers: <NavigatorObserver>[
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      initialRoute: splashScreenTwoRoute,
      onGenerateRoute: AppRouterGenerator.generateRoute,
      title: 'Kundli Test: Abdi Adan',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const SplashScreen(),
    );
  }
}
