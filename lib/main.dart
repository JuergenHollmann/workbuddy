import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/features/home/screens/home_screen.dart';

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
  √ WbHomePage: WbInfoContainer als "Footer" programmieren √
  √ Icons sollen beim Aussuchen sichtbar sein (Einstellungen in VSCode) √
  √ CompanyScreen: Logo und Bild oben sind noch zu groß für SamsungA05 √
  - GestureDetector in allen Button-Widgets fixen:
    √ WBGreenButton        - Beispiel: Login-Button √
    √ WbButtonsUniWithImageButton √
    √ WbDialogAlertUpdateComingSoon √
    - WbButtonUniversal2   - Beispiel: Workbuddy beenden 
    - WbButtonUniversal    - Beispiel: Jetzt registrieren
  √ "Spacer(flex: 1)" waren das Problem, warum ich nicht mehr die Seite öffnen konnte! √
  
  - kann gelöscht werden: "WbDropdownButtonFormfield" 
  - kann gelöscht werden: "WbDropDownMenu2"
  - kann gelöscht werden: "SplashScreen"
  - kann gelöscht werden: "WBRedButton"
  √ ist gelöscht worden: "ContactMenuX" √
  √ ist gelöscht worden: "ContactScreenX" √

  - CompanyScreen: leadingIconsInMenu hat hier keine Auswikung // todo 0233 + 0406

* Updates:
  - Kontakt direkt anrufen                        - Update CM-0090
  - WhatsApp direkt versenden                     - Update CM-0150
  - mehr Funktionen - E-Mail an den Entwickler    - Update CM-0249
  - mehr Funktionen - E-Mail an den Entwickler    - Update CM-0132
  - Alle Kontakte zeigen                          - Update CM-0098

  √ Datums-Picker (Geburtstage, etc.) installiert: time_picker_spinner_pop_up: ^2.0.0 √
    x - flutter_rounded_date_picker: ^3.0.4 (nicht installiert)
    x - flutter_holo_date_picker: ^2.0.0    (nicht installiert)
    x - progressive_time_picker: ^1.0.1     (nur Zeitspanne, aber gut aussehend)
  - Alter anhand vom Geburtstag automatisch berechnen und im Feld eintragen - 0491 - CompanyScreen  
  - Checklisten-App in WorkBuddy einbauen - ToDo-Liste (Aufgaben)
  - Im Validator "Die Paßwörter sind NICHT gleich!" funzt so nicht! 0050 - Validator
  - App-Icon neu erstellen (Android-Bug? - in Android nur schwarz)
- Splash-Screen neu erstellen (Android-Bug? - in Android beschnitten) - wird nicht besser - selber programmmieren

* WbInfoContainer:
  - Der "WbInfoContainer" soll außerhalb der Scrollview am Bottom fixiert sein - 0927
    - Den "WbInfoContainer" als "Menubar" deklarieren?
    - Im "WbInfoContainer" sollen unten die Änderungen und der Kunde angezeigt werden, wenn keine Änderungen, dann "zuletzt  geändert am" anzeigen.

* Drawer:
  - Überprüfe ob der AudioPlayer in den Settings(Jingles) "an" oder "aus" ist.
  - Im Drawer eine Liste anlegen (wie ein Inhaltsverzeichnis - nach Themen geordnet), die eine direkte Navigation auf alle möglichen Seiten durch anklicken erstellt. Hinweis: WbButtonUniversal2 

* Firebase Services:
  - Mit Analytics werden Nutzungs- und Verhaltensdaten für meine App erfasst   → firebase_analytics
  - Authentication zur Identifizierung meiner User                             → firebase_auth
  - Cloud Firestore-Datenbank zur Speicherung von Daten in der Cloud           → cloud_firestore
  - Firebase Cloud Messaging-Client für Push-Nachrichten an meine User         → firebase_messaging
  - Mit Cloud Storage - Bilder und Videos hochladen und teilen                 → firebase_storage
  - Crashlytics - Fehlermeldungen und Abstürze der App auswerten               → firebase_crashlytics

* GitHub:  
  Um die Firebase API-Keys von Github geheim zu halten in die ".gitignore" vom Projektverzeichnis eintragen:
  #API Keys;
  /lib/firebase_options.dart
  /android/app/google-services.json
  /macos/Runner/GoogleService-Info.plist
  /ios/Runner/GoogleService-Info.plist
  Falls bereits ein commit mit den Api Keys unternommen wurde, muss man GitHub mitteilen, dass diese Files nicht mehr beobachtet werden sollen. Dies erreicht man, wenn man im Projekt das Terminal öffnet und folgende Befehle eingibt:
  git rm --cached lib/firebase_options.dart
  git rm --cached android/app/google-services.json
  git rm --cached macos/Runner/GoogleService-Info.plist
  git rm --cached ios/Runner/GoogleService-Info.plist

  - ANDERE Schriftgrößen automatisch einstellen? Beispiel: iOS = 20 | Pixel8 = 27 | SamsungA05 = 21 (0513)
  - CompanyScreen: Button "Firma speichern" auf dynamische Größe ändern
  √ CompanyScreen: DropDown Lieferant / Kunde / etc. anstatt "CompanyRadioButton1" = deaktiviert - 0193 √
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
  - Für die Arbeit im Team nicht nur Buttons (ohne Funktion) als Platzhalter anlegen, sondern dann einen Hinweis ("showDialog" oder "snackBar") anzeigen.
  *--------------------------------- *** ---*/

