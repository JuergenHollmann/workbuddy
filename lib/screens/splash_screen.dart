// funzt noch nicht

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:workbuddy/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // damit der SplashScreen etwas länger zu sehen ist soll ein Timer das steuern // todo
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const MainApp())));

    var assetsImage = const AssetImage(
        "assets/splash/workbuddy_splashscreen_transparent.png");
    var image = Image(
      image: assetsImage,
      width: 1200,
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("WorkBuddy"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.black),
          child: Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
