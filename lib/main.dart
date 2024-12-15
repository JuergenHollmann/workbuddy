import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:workbuddy/features/home/screens/home_screen.dart';
// import 'package:workbuddy/shared/repositories/auth_repository.dart';
// import 'package:workbuddy/shared/repositories/database_repository.dart';
// import 'package:workbuddy/shared/repositories/firebase_auth_repository.dart';
// import 'package:workbuddy/shared/repositories/mock_database.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // final DatabaseRepository databaseRepository = MockDatabase();
  // final AuthRepository authRepository = FirebaseAuthRepository();

  runApp(MainApp(
    // databaseRepository: databaseRepository,
    // authRepository: authRepository,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
    // required DatabaseRepository databaseRepository,
    // required AuthRepository authRepository,
  });
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

  /*--------------------------------- Projekt 20: Firerbase Auth ---
  1) AuthRepository
  √ Implementiere ein AuthRepository in deiner App.
  Dieses soll Methoden bieten, um an einen Benutzer zu kommen
  und Benutzer zu registrieren und anzumelden.
  Implementiere außerdem ein MockAuthRepository, das das AuthRepository implementiert
  und den Login etc. ermöglicht.
  Hinweis: Nutze die Anleitung im Classroom und den Code der Beispiel-App!
  Hinweis: Wenn du bereits ein Repository für Login und Registrierung nutzt,
  musst du nur den Code dafür kopieren.
  Erzeuge dann an der Wurzel deiner App eine Instanz dieser Klasse
  und reiche sie durch den Widget Tree an alle Widgets (Screens) weiter,
  die sie benötigen (z.B. zum Login oder Logout).
  Nutze die Funktionen deines AuthRepository nun in deinen Screens.
  Wie sieht dein AuthRepository und dein MockAuthRepository aus? Kopiere den Code.
  Deine Antwort:

  2) Binde nun Firebase Auth ein.
  Baue dies in ein FirebaseAuthRepository ein, das AuthRepository implementiert.
  In diesem sollst du FirebaseAuth verwenden.
  Ermögliche es, dass der Benutzer sich einloggt.
  Reagiere außerdem im FirebaseAuthRepository auf den Stream authStateChanges
  und gib die Benutzerdaten weiter.
  Reagiere in der UI mit einem StreamBuilder, sodass du deine Nutzer je nach Login-Status
  auf den LoginScreen bzw. deinen Hauptscreen leiten kannst.
  Hinweis: Nutze die Anleitung im Classroom und den Code der Beispiel-App!
  Wie sieht dein Code jetzt aus? Kopiere ihn in das Antwortfeld.

* Firebase:
  √ für iOS muss im ios/Podfile ---> platform :ios, '13.0' eingestellt werden √ 

  /*--------------------------------- TODO's ---
  √ WbHomePage: WbInfoContainer als "Footer" programmieren √
  √ Icons sollen beim Aussuchen sichtbar sein (Einstellungen in VSCode) √
  √ CompanyScreen: Logo und Bild oben sind noch zu groß für SamsungA05 √
  - WbImageButtonNoText: Abfrage ob mit oder ohne Schatten - 0038
  - In allen Buttons eine Soundfunktion (ClicK) einfügen
  - GestureDetector in allen Button-Widgets fixen:
    √ WBGreenButton        - Beispiel: Login-Button √
    √ WbButtonsUniWithImageButton √
    √ WbDialogAlertUpdateComingSoon √
    - WbButtonUniversal2   - Beispiel: Workbuddy beenden 
    - WbButtonUniversal    - Beispiel: Jetzt registrieren
  √ "Spacer(flex: 1)" waren das Problem, warum ich nicht mehr die Seite öffnen konnte! √
  
  - Das kann später evtl. gelöscht werden: lib/shared/data/user.dart
  - kann gelöscht werden: "WbDividerWithSmallTextCenter"
  - kann gelöscht werden: "WbDropdownButtonFormfield" 
  - kann gelöscht werden: "WbDropDownMenu2"
  - kann gelöscht werden: "SplashScreen"
  √ ist gelöscht worden: "WBRedButton" √
  √ ist gelöscht worden: "ContactMenuX" √
  √ ist gelöscht worden: "ContactScreenX" √

  - CompanyScreen: leadingIconsInMenu hat hier keine Auswikung // todo 0233 + 0406

* Updates:
  - Kontakt direkt anrufen                        - Update CM-0090
  - WhatsApp direkt versenden                     - Update CM-0150
  - mehr Funktionen - E-Mail an den Entwickler    - Update CM-0249
  - mehr Funktionen - E-Mail an den Entwickler    - Update CM-0132
  - Alle Kontakte zeigen                          - Update CM-0098
  - Mit Google-Account einloggen                  - Update LS-0495
  - Mit Apple-Account einloggen                   - Update LS-0573
  - Mit WorkBuddy-Account einloggen               - Update LS-0555

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
  In die ".gitignore" vom Projektverzeichnis eintragen:
  # Um die Firebase API-Keys bei GitHub geheim zu halten:
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
*/
