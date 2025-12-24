import 'package:flutter/material.dart';
import 'onboarding/mode_selection.dart';


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
      home: const ModeSelectionScreen(),
    );
  }
}
