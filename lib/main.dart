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
      debugShowCheckedModeBanner: true,
      title: appTitle,
      home: WbHomePage(title: appTitle),
    );
  }
}
  /*--------------------------------- TODO's ---
  √ WbHomePage: WbInfoContainer als Footer programmieren √
  √ Icons sollen beim Aussuchen sichtbar sein (Einstellungen in VSCode) √
  √ CompanyScreen: Logo und Bild oben sind noch zu groß für SamsungA05 √
  - App-Icon neu erstellen
  - Splash-Screen neu erstellen
  - Der "WbInfoContainer" soll außerhalb der Scrollview am Bottom fixiert sein - 0927 todo
  - CompanyScreen: Button "Firma speichern" auf dynamische Größe ändern
  - CompanyScreen: DropDown Lieferant / Kunde / etc. anstatt "CompanyRadioButton1" - 0193 todo
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
  *---------------------------------- Was habe ich dazugelernt? ---* 
  - Nutzung von KeyboardType: Phone, Text, Datetime, ...
  - Text-Validierung mit "TextEditingController"
  - Text an andere Felder übergeben mit "TextEditingController" und der Funktion "onChange"
  *--------------------------------- *** ---*/

