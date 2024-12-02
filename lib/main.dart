import 'package:flutter/material.dart';
import 'package:workbuddy/screens/home_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  /*--------------------------------- *** ---*/
  static const appTitle = 'WorkBuddy • save time and money!';
  /*--------------------------------- *** ---*/
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: WbHomePage(title: appTitle),
    );
  }
}

  /*--------------------------------- TODO's ---
  √ WbHomePage: WbInfoContainer als Footer programmieren
  - WbHomePage: Drawer fertig programmieren
  - P01LoginScreen: 0513 - andere Schriftgrößen: iOS = 24 | Pixel8 = 27
  - P01LoginScreen: Info-Leiste auf dem Startbildschirm unten einbauen
  - P01LoginScreen: Login mit SQFlite-DB verbinden
  - P01LoginScreen: Passwort gleich von Anfang an ausblenden (mit State?)

  
  
  
  
  --------------------------------- *** ---*/

