import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_universal_2.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_dialog_2buttons.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/features/authentication/screens/p00_registration_screen.dart';
import 'package:workbuddy/screens/selection_screen.dart';
import 'package:workbuddy/shared/widgets/w_b_green_button.dart';
import 'package:workbuddy/shared/widgets/wb_divider_with_small_text_center.dart';

class P01LoginScreen extends StatefulWidget {
  const P01LoginScreen({super.key});

  @override
  State<P01LoginScreen> createState() => _P01LoginScreenState();
}

/*--------------------------------- User + Passwort ---*/
const String userName = "Jürgen";
const String userPassword = "Pass";
// bool visibilityPassword = false;
bool loginButtonIsEnabled = false;

class _P01LoginScreenState extends State<P01LoginScreen> {
  // Brauchen wir, damit wir alle TextFormFields validieren können
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//  String userName = "Jürgen";
//  String userPassword = "pass";
// // bool visibilityPassword = false;
// bool loginButtonIsEnabled = false;

  /*--------------------------------- AudioPlayer ---*/
  // ACHTUNG: Beim player den sound OHNE "assets/...", sondern gleich mit "sound/..." eintragen (siehe unten):
  late AudioPlayer player = AudioPlayer();

  /*--------------------------------- Controller ---*/
  final TextEditingController userNameTEC = TextEditingController();
  final TextEditingController userPasswordTEC = TextEditingController();

  bool visibilityPassword = false;
  String inputUserName = ""; // nur für die "onChanged-Funktion"
  String inputPassword = ""; // nur für die "onChanged-Funktion"

  /*--------------------------------- Login Button automatisch anklicken ---*/
  void _automaticButtonClick() {}

  // /*--------------------------------- isValidEmail ---*/
  // String? isValidEmail(String? value) {
  //   // E-Mail soll aus Zeichen bestehen, also nicht leer sein.
  //   if (value == null) return "Die E-Mail muss angegeben werden! ";
  //   // E-Mail soll mindestens 5 Zeichen lang sein (a@b.d)
  //   if (value.length < 5) return "Die E-Mail benötigt mindestens 5 Zeichen!";
  //   // E-Mail soll ein "@" enthalten.
  //   if (!value.contains("@")) return "Die E-Mail muss ein @ enthalten!";
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          /*--------------------------------- Image Logo ---*/
          const SizedBox(
            height: 120,
            width: 120,
            child: Image(
              image: AssetImage("assets/workbuddy_logo_neon_green_512x512.png"),
            ),
          ),
          /*--------------------------------- Divider ---*/
          const Divider(thickness: 4, color: Colors.blue),
          /*--------------------------------- Text ---*/
          const Text(
            "Herzlich willkommen bei",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 0, 80, 220)),
            textAlign: TextAlign.center,
          ),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight8,
          /*--------------------------------- Image ---*/
          const Image(
              image: AssetImage("assets/workbuddy_glow_schriftzug.png")),
          /*--------------------------------- Text ---*/
          const Text(
            "\"save time and money!\"",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 0, 80, 220)),
            textAlign: TextAlign.center,
          ),
          /*--------------------------------- Divider ---*/
          const Divider(thickness: 4, color: Colors.blue),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight8,
          /*--------------------------------- Text ---*/
          Text(
            "Bitte melde Dich an: $inputUserName",
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 255, 0, 0)),
            textAlign: TextAlign.center,
          ),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight16,
          /*--------------------------------- Benutzername - Feld ---*/
          TextFormField(
            controller: userNameTEC,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: wbColorButtonGreen,
            ),

            textAlign: TextAlign.left,
            textInputAction: TextInputAction.next,

            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(16),

              /*--------------------------------- labelStyle ---*/
              labelText: 'Benutzername',
              labelStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),

              /*--------------------------------- prefixIcon ---*/
              prefixIcon: Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  size: 40,
                  Icons.person,
                ),
              ),

              /*--------------------------------- hintText ---*/
              hintText: "Bitte Benutzername eingeben",
              hintStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.black38,
              ),

              /*--------------------------------- border ---*/
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),

            /*--------------------------------- onChanged ---*/
            onChanged: (String userNameTEC) {
              log("Eingabe: $userNameTEC");
              inputUserName = userNameTEC;
              setState(() => inputUserName = userNameTEC);

              if (userNameTEC == userName) {
                /*--------------------------------- log ---*/
                log("Der Benutzername \"$userName\" ist KORREKT 😉");

                /*--------------------------------- Audio ---*/
                /* Überprüfe ob der AudioPlayer in den Settings(Jingles) "an" oder "aus" ist. */ //todo
                player.play(AssetSource("sound/sound06pling.wav"));

                /*--------------------------------- Snackbar ---*/
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: wbColorButtonGreen,
                  duration: Duration(milliseconds: 400),
                  content: Text(
                    "Hinweis:\nDer Benutzername \"$userName\" ist KORREKT 😉",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ));
                /*--------------------------------- *** ---*/
                setState(() {
                  loginButtonIsEnabled = true; // funzt nicht
                  WBGreenButton(onTap: () {}); // funzt nicht
                });
              } else {
                log("Die Eingabe für den Benutzername ist NICHT korrekt!");
                //const WBGreenButton(onTap: null); // funzt nicht
              }
            },

            /*--------------------------------- validator ---*/
            // validator: (userNameTEC) {
            //   // Der Benutzername wurde nicht ausgefüllt:
            //   if (userNameTEC == null) {
            //     return "Bitte den Benutzernamen angeben!";

            //   }
            //   // Alles ist in Ordnung, keine Probleme
            //   return null;
            // },
          ),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight32,
          /*--------------------------------- Passwort - Feld ---*/
          TextFormField(
            //validator: isValidEmail(),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: wbColorButtonDarkRed,
            ),
            textAlign: TextAlign.left,
            textInputAction: TextInputAction.next,
            obscureText: visibilityPassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(16),

              /*--------------------------------- labelStyle ---*/
              labelText: 'Passwort',
              labelStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),

              /*--------------------------------- prefixIcon ---*/
              prefixIcon: const Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  size: 40,
                  Icons.lock,
                ),
              ),

              /*--------------------------------- hintText ---*/
              hintText: "Bitte Passwort eingeben",
              hintStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.black38,
              ),

              /*--------------------------------- suffixIcon ---*/
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    visibilityPassword = !visibilityPassword;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    size: 40,
                    visibilityPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
              ),

              /*--------------------------------- border ---*/
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),

            /*--------------------------------- onChanged ---*/
            onChanged: (String userPasswordTEC) {
              log("Eingabe: $userPasswordTEC");
              inputPassword = userPasswordTEC;
              setState(() => inputPassword = userPasswordTEC);

              if (userPasswordTEC == userPassword &&
                  inputUserName == userName) {
                log("Das Passwort \"$userPassword\" ist KORREKT!");

                /*--------------------------------- Audio ---*/
                /* Überprüfe ob der AudioPlayer in den Settings(Jingles) "an" oder "aus" ist. */ //todo
                player.play(AssetSource("sound/sound06pling.wav"));

                /*--------------------------------- Snackbar ---*/
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: wbColorButtonGreen,
                  duration: Duration(milliseconds: 500),
                  content: Text(
                    "Hinweis:\nDas Passwort \"$userPassword\" ist KORREKT 😉",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ));
                /*--------------------------------- *** ---*/
                _automaticButtonClick;
                // /*--------------------------------- checkUserAndPassword ---*/
                // } else if (userName == "Jürgen" && userPassword == "Pass") {
                //   // userPasswordTEC
                log("Nach Prüfung 307 wechsle zur SelectionPage ");

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectionPage(),
                  ),
                );
              } else {
                log("Die Eingabe für das Passwort ist NICHT korrekt!");
              }
            },

            /*--------------------------------- validator ---*/
            validator: (userPassword) {
              // Password wurde nicht ausgefüllt:
              if (userPassword == null) {
                // return "Bitte Passwort angeben";
                log("Password wurde nicht ausgefüllt");
              } else if (userPassword == "Pass") {
                // } else if (userPassword == userPasswordTEC) {

                // return "Passwort ist korrekt";
                log("Password ist korrekt");
              }
              // Passwort und Benutzername sind beide korrekt:
              return null;
            },
          ),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight8,
          /*--------------------------------- Text ---*/
          const Text(
            "Passwort vergessen?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: wbColorButtonDarkRed,
            ),
            textAlign: TextAlign.right,
          ),
          /*--------------------------------- Divider ---*/
          const Divider(thickness: 4, color: wbColorButtonGreen),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight8,
          /*--------------------------------- Login-Button ---*/
          GestureDetector(
            child: WBGreenButton(
              onTap: () {
                // HIER drin bringt der Aufruf NICHTS!
              },
            ),
            onTap: () {
              // --> hier ist der Aufruf vom GestureDetector <--
              /*--------------------------------- checkUserAndPassword ---*/
              log("Überprüfe Benutzer UND Passwort (364 - checkUserAndPassword)");
              if (userName == "Jürgen" && userPassword == "Pass") {
                log("Nach Prüfung - 366 - wechsle zur SelectionPage");

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectionPage(),
                  ),
                );
              } else {
                /*--------------------------------- Snackbar ---*/
                log("Das Passwort oder der Benutzername sind nicht korrekt ... 😉");
                player.play(AssetSource("sound/sound03enterprise.wav"));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: wbColorButtonDarkRed,
                  content: Text(
                    "Hinweis:\nDas Passwort oder der Benutzername sind NICHT korrekt ... 😉",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ));
                /*--------------------------------- *** ---*/
                //result = false;
              }
              //return result;
            },
          ),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight16,
          /*--------------------------------- Divider ---*/
          const Divider(thickness: 4, color: wbColorButtonGreen),
          /*--------------------------------- Text ---*/
          GestureDetector(
            onTap: () {
              log("Auf - P00RegistrationScreen gehen - angeklickt");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const P00RegistrationScreen(
                      //startGroupValue: "Ausgabe",
                      ),
                ),
              );
            },
            child: const Text(
              "Neuer Benutzer? Hier registrieren ...",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: wbColorButtonGreen,
              ),
              textAlign: TextAlign.right,
            ),
          ),

          /*--------------------------------- Divider ---*/
          const Divider(thickness: 4, color: wbColorButtonGreen),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight8,
          /*--------------------------------- WbButtonUniversal ---*/
          WbButtonUniversal2(
            wbColor: wbColorButtonDarkRed,
            wbIcon: Icons.report_outlined,
            wbIconSize40: 40,
            wbText: "WorkBuddy beenden",
            wbFontSize24: 24,
            wbWidth155: 398,
            wbHeight60: 60,
            wbOnTap: () {
              /*--------------------------------- AlertDialog ---*/
              // Abfrage ob die App geschlossen werden soll:
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const WBDialog2Buttons(
                        headLineText:
                            "Möchtest Du jetzt wirklich diese tolle WorkBuddy-App beenden?",
                        descriptionText:
                            "Bevor Du diese tolle WorkBuddy-App beendest, denke bitte daran:\n\n Bei aller Aufregung sollten wir aber nicht vergessen, dass Al Bundy im Jahr 1966 vier Touchdowns in einem Spiel gemacht hat und damit den den Polk High School Panthers zur Stadtmeisterschaft verholfen hat!\n\nAußerdem sollte man auf gesunde Ernährung achten, deshalb empfehle ich täglich ein gutes Käsebrot (für Vegetarier und Veganer natürlich auch gerne mit veganer Butter).\n\nWenn du keinen Käse magst, dann kannst du natürlich auch ein Wurstbrot essen, aber dann ist das logischerweise wiederum nicht vegan (aber es gibt ja auch vegane Wurst) und in diesem Falle kannst du eben auch die Wurst weglassen, wenn Du eine vegane Butter auf dem Brot hast. \n\nWarum schreibe ich das alles hier hin?\n\nGanz einfach:\nWeil ich zeigen wollte, dass diese Textzeilen SCROLLBAR sind.",
                      ));
              /*--------------------------------- AlertDialog ---*/
            },
          ),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight16,
          /*--------------------------------- WbDividerWithSmallTextCenter ---*/
          const WbDividerWithSmallTextCenter(
            wbDividerText: "WorkBuddy Version 0.001",
          ),
          /*--------------------------------- ENDE ---*/
        ],
      ),
    );
  }
}
