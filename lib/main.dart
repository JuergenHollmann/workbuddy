import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/features/authentication/screens/login.dart';

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
        backgroundColor: wbBackgroundBlue,
        body: SafeArea(
          child: Column(
            children: [
              Login(),
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
