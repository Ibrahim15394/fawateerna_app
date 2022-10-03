import 'package:fawateerna_app/core/util/styles/themes.dart';
import 'package:fawateerna_app/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'features/splash_screen/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        theme: lightTheme,
      home: const SplashScreen(),
    );
  }
}


