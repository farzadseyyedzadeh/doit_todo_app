import 'package:doit_todo_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoItApp());
}

class DoItApp extends StatelessWidget {
  const DoItApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
