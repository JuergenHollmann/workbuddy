import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/features/authentication/screens/p01_login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: wbColorBackgroundBlue,
        body: SafeArea(
          child: Column(
            children: [
              P01LoginScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class Audio {
  static load(String s) {}
}

class AudioCache {
  void play(String alarmAudioPath) {}
}
