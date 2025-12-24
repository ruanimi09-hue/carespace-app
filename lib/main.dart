import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Center(
          child: Text(
            'Welcome to CareSpace',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
