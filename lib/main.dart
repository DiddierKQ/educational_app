import 'package:educational_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  static const String _title = "Ksquare app";

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp (
      debugShowCheckedModeBanner: false,
      title: _title,
      themeMode: ThemeMode.system,
      home: OnboardingScreen(),
    );
  }
}
