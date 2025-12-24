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
  theme: ThemeData(
    scaffoldBackgroundColor: const Color(0xFFF6F7F9),
    primaryColor: Colors.blueGrey,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black54,
      ),
    ),
  ),
  home: const DashboardScreen(),
);
