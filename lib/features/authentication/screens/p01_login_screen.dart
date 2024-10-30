import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/shared/widgets/w_b_green_button.dart';
import 'package:audioplayers/audioplayers.dart';

class P01LoginScreen extends StatefulWidget {
  const P01LoginScreen({super.key});

  @override
  State<P01LoginScreen> createState() => _P01LoginScreenState();
}

/*--------------------------------- User + Passwort ---*/
const String userName = "Jürgen";
const String userPassword = "pass";
bool visibilityPassword = false;
bool loginButtonIsEnabled = false;

class _P01LoginScreenState extends State<P01LoginScreen> {
  late AudioPlayer player = AudioPlayer();
  final TextEditingController userNameTEC = TextEditingController();
  final TextEditingController userPasswordTEC = TextEditingController();
  String inputUserName = ""; // nur für die "onChanged-Funktion"
  String inputPassword = ""; // nur für die "onChanged-Funktion"

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

              /*--- labelStyle ---*/
              labelText: 'Benutzername',
              labelStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),

              /*--- prefixIcon ---*/
              prefixIcon: Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  size: 40,
                  Icons.person,
                ),
              ),

              /*--- hintText ---*/
              hintText: "Bitte Benutzername eingeben",
              hintStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.black38,
              ),

              /*--- border ---*/
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),

            /*--- onChanged ---*/
            onChanged: (String newInputUsername) {
              log("Eingabe: $newInputUsername");
              inputUserName = newInputUsername;
              setState(() => inputUserName = newInputUsername);

              if (newInputUsername == userName) {
                log("Der Benutzername $userName ist KORREKT!");
                // ACHTUNG: Beim player den sound OHNE "assets/...", sondern gleich mit "sound/..." eintragen (siehe unten):
                player.play(AssetSource("sound/sound06pling.wav"));

                // WBGreenButton(onTap: () {}); // funzt nicht
                setState(() {
                  loginButtonIsEnabled = true; // funzt nicht
                  WBGreenButton(onTap: () {}); // funzt nicht
                });
              } else {
                log("Die Eingabe für den Benutzername ist NICHT korrekt!");
                //const WBGreenButton(onTap: null); // funzt nicht
              }
            },

            /*--- validator ---*/
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

              /*--- labelStyle ---*/
              labelText: 'Passwort',
              labelStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),

              /*--- prefixIcon ---*/
              prefixIcon: const Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  size: 40,
                  Icons.lock,
                ),
              ),

              /*--- hintText ---*/
              hintText: "Bitte Passwort eingeben",
              hintStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.black38,
              ),

              /*--- suffixIcon ---*/
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

              /*--- border ---*/
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),

            /*--- onChanged ---*/
            onChanged: (String newInputPassword) {
              log("Eingabe: $newInputPassword");
              inputPassword = newInputPassword;
              setState(() => inputPassword = newInputPassword);
              if (newInputPassword == userPassword) {
                log("Das Passwort $userPassword ist KORREKT!");
                // ACHTUNG: Beim player den sound OHNE "assets/...", sondern gleich mit "sound/..." eintragen (siehe unten):
                player.play(AssetSource("sound/sound06pling.wav"));
              } else {
                log("Die Eingabe für das Passwort ist NICHT korrekt!");
              }
            },

            /*--- validator ---*/
            validator: (userPassword) {
              // Password wurde nicht ausgefüllt:
              if (userPassword == null) {
                // return "Bitte Passwort angeben";
                log("Password wurde nicht ausgefüllt");
              } else if (userPassword == "üpoiuztrewq") {
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
          WBGreenButton(onTap: () {}),
          /*--------------------------------- Abstand ---*/
          wbSizedBoxHeight16,
          /*--------------------------------- Divider ---*/
          const Divider(thickness: 4, color: wbColorButtonGreen),
          /*--------------------------------- Text ---*/
          const Text(
            "Registrierung",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: wbColorButtonGreen,
            ),
            textAlign: TextAlign.right,
          ),
          /*--------------------------------- Divider ---*/
          const Divider(thickness: 4, color: wbColorButtonGreen),
          /*--------------------------------- ENDE ---*/
          // Container(height: 60),
          // ElevatedButton.icon(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const SelectionPage()),
          //       );

          //       // Code: soll einen Ton abspielen und ins Auswahlmenü wechseln // todo

          //       // Scaffold.of(context).openDrawer();  // startet den Drawer

          //       // final player = Audio.load("asset/sound05xylophon.wav");
          //       // player.play();
          //       /* NoSuchMethodError (NoSuchMethodError: The method 'play' was called on null.
          //          Receiver: null
          //          Tried calling: play("asset/sound05xylophon.wav")) */

          //       // int soundId = await rootBundle
          //       //     .load("assets/sound05xylophon.wav")
          //       //     .then((ByteData soundData) {
          //       //   /* NoSuchMethodError (NoSuchMethodError: Class 'String' has no instance method 'load'.
          //       //      Receiver: "assets/sound05xylophon.wav"
          //       //      Tried calling: load(_UnmodifiableByteDataView)) */
          //       //   return pool.load(soundData);
          //       // });
          //       // await pool.play(soundId);

          //       // AudioCache player = AudioCache();
          //       // const alarmAudioPath = "sound05xylophon.wav";
          //       // player.play(alarmAudioPath);
          //     },
          //     icon: const Icon(Icons.login, size: 34, fill: 1, weight: 80),
          //     label: const Text("  P01LoginScreen"),
          //     style: ElevatedButton.styleFrom(
          //       foregroundColor: Colors.black, // Textfarbe
          //       backgroundColor: Colors.blue, // Buttonfarbe
          //       shadowColor: Colors.black,
          //       iconColor: Colors.white,
          //       textStyle: const TextStyle(
          //           fontSize: 30, fontWeight: FontWeight.w900),
          //     )),
        ],
      ),
    );
  }
}
