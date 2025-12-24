import 'package:flutter/material.dart';
import 'onboarding/mode_selection.dart';
import 'home/dashboard_screen.dart';



void main() {
  runApp(const CareSpaceApp());
}

class CareSpaceApp extends StatelessWidget {
  const CareSpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CareSpace',
      debugShowCheckedModeBanner: false,
      home: const home: const DashboardScreen(),
    );
  }
}
