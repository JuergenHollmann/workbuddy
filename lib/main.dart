import 'package:flutter/material.dart';
import 'package:workbuddy/screens/home_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const appTitle = 'WorkBuddy • save time and money!';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: WbHomePage(title: appTitle),
    );
  }
}