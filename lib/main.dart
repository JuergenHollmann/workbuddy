import 'dart:developer';

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
    log("0015 - MainApp - wird gestartet");

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: WbHomePage(title: appTitle),
    );
  }
}
  /*--------------------------------- TODO's ---
  √ WbHomePage: WbInfoContainer als Footer programmieren √
  √ Icons sollen beim Aussuchen sichtbar sein (Einstellungen in VSCode) √
  √ CompanyScreen: Logo und Bild oben sind noch zu groß für SamsungA05 √
  - GestureDetector in allen Button-Widgets fixen - Beispiel: WbButtonUniversal2
  - "Spacer(flex: 1)" sind das Problem, warum ich nicht mehr die Seite öffnen kann!
  - Im Validator "Die Paßwörter sind NICHT gleich!" funzt so nicht! 0050 - Validator
  - App-Icon neu erstellen (Android-Bug? - in Android nur schwarz)
  - Splash-Screen neu erstellen (Android-Bug? - in Android beschnitten)

  - Der "WbInfoContainer" soll außerhalb der Scrollview am Bottom fixiert sein - 0927
    - Den "WbInfoContainer" als "Menubar" deklarieren?
    - Im "WbInfoContainer" sollen unten die Änderungen und der Kunde angezeigt werden, wenn keine Änderungen, dann "zuletzt  geändert am" anzeigen.

  - Im Drawer eine Liste anlegen (wie ein Inhaltsverzeichnis - nach Themen geordnet), die eine direkte Navigation auf alle möglichen Seiten durch anklicken erstellt. Hinweis: WbButtonUniversal2 

  - ANDERE Schriftgrößen automatisch einstellen? Beispiel: iOS = 20 | Pixel8 = 27 | SamsungA05 = 21 (0513)
  - CompanyScreen: Button "Firma speichern" auf dynamische Größe ändern
  - CompanyScreen: DropDown Lieferant / Kunde / etc. anstatt "CompanyRadioButton1" - 0193
  - CompanyScreen: Name der Firma unter dem Logo automatisch eintragen
  - CompanyScreen: Name des Kunden unter dem Bild automatisch eintragen
  - ContactScreen: lässt sich nicht mehr starten!
  - WbButtonUniversal: Warum hat "width" keine Auswirkung?
  - WbHomePage: Drawer fertig programmieren
  - P01LoginScreen: 0513 - andere Schriftgrößen: iOS = 24 | Pixel8 = 27
  - P01LoginScreen: Info-Leiste auf dem Startbildschirm unten einbauen
  - P01LoginScreen: Login mit SQFlite-DB verbinden
  - P01LoginScreen: Passwort gleich von Anfang an ausblenden (mit State?)
  - CompanyScreen: Telefonanruf starten - 0513 - company_screen - Anruf starten
  - autofillHints: autofillHints, // wie funzt das?
  - PRODUCT_BUNDLE_IDENTIFIER = com.example.widgetsIntroductionLiveCoding umbenennen

  *---------------------------------- Was habe ich dazugelernt? ---* 
  - Da in der App möglichst alles groß und kontrastreich dargestellt werden soll, habe ich viel über Styles und "overflows", etc. gelernt.
  - Nutzung von KeyboardType: Phone, Text, Datetime, ...
  - Text-Validierung mit "TextEditingController".
  - Text an andere Felder übergeben mit "TextEditingController" und der Funktion "onChange".
  - Den GestureDetector nicht "doppelt" benutzen, sondern die Funktion in den Button-Widget-Vorlagen richtig übergeben und nur einmal nutzen.
  - Für die Arbeit im Team nicht nur Buttons (ohne Funktion) als Platzhalter anlegen, sondern dann einen Hinweis (showDialog oder "Toast-Message") anzeigen.
  *--------------------------------- *** ---*/

