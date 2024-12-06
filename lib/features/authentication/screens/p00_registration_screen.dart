import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_universal.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/features/authentication/screens/p01_login_screen.dart';
import 'package:workbuddy/shared/widgets/validator.dart';

class P00RegistrationScreen extends StatefulWidget {
  const P00RegistrationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _P00RegistrationScreenState();
}

/*--------------------------------- User + Passwort ---*/
// const String userName = "Jürgen";
// const String userPassword = "pass";
bool visibilityPassword = false;
// bool loginButtonIsEnabled = false;

class _P00RegistrationScreenState extends State<P00RegistrationScreen> {
  // GlobalKey<FormState> brauchen wir, damit wir alle TextFormFields validieren können:
  final GlobalKey<FormState> _registrationformKey = GlobalKey<FormState>();

  late AudioPlayer player = AudioPlayer();

/*--------------------------------- Controller ---*/
  final TextEditingController userNameTEC = TextEditingController();
  final TextEditingController userPasswordTEC = TextEditingController();

  bool visibilityPassword = false;

  String inputUserName = ""; // nur für die "onChanged-Funktion"
  String inputPassword = ""; // nur für die "onChanged-Funktion"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      appBar: AppBar(
        title: const Text(
          'Registrierung',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbColorBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*--------------------------------- Abstand ---*/
              wbSizedBoxHeight8,
              /*--------------------------------- Image ---*/
              const Image(
                  image: AssetImage("assets/workbuddy_glow_schriftzug.png")),
              /*--------------------------------- Abstand ---*/
              wbSizedBoxHeight16,
              /*--------------------------------- Form ---*/
              Form(
                key: _registrationformKey,
                /*--------------------------------- Benutzername - Feld ---*/
                child: Column(
                  children: [
                    TextFormField(
                      validator: Validator.isValidUsername,
                      //controller: userNameTEC,
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
                        errorStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          backgroundColor: Colors.yellow,
                        ),

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
                          player.play(AssetSource("sound/sound05xylophon.wav"));
                          // player.play(AssetSource("sound/sound06pling.wav"));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text("Benutzername ist KORREKT"),
                              action: SnackBarAction(
                                label: "OK",
                                onPressed: () {},
                              ),
                            ),
                          );

                          // WBGreenButton(onTap: () {}); // funzt nicht
                          setState(() {
                            // loginButtonIsEnabled = true; // funzt nicht
                            // WBGreenButton(onTap: () {}); // funzt nicht
                          });
                        } else {
                          log("Die Eingabe für den Benutzername ist NICHT korrekt!");
                          //const WBGreenButton(onTap: null); // funzt nicht
                        }
                      },
                    ),
                    /*--------------------------------- Abstand ---*/
                    wbSizedBoxHeight32,
                    /*--------------------------------- Telefon + WhatsApp ---*/
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
                        errorStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          backgroundColor: Colors.yellow,
                        ),

                        /*--- labelStyle ---*/
                        labelText: 'Mobil • WhatsApp *',
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
                            Icons.smartphone_outlined,
                          ),
                        ),

                        /*--- hintText ---*/
                        hintText: "* = freiwillige Angabe",
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black38,
                        ),

                        /*--- suffixIcon ---*/
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              // Hilfetext anzeigen:
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              size: 40,
                              Icons.help_outline,
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
                    ),
                    /*--------------------------------- Abstand ---*/
                    wbSizedBoxHeight32,
                    /*--------------------------------- E-Mail - Feld ---*/
                    TextFormField(
                      validator: Validator.isValidEmail,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: wbColorButtonDarkRed,
                      ),
                      textAlign: TextAlign.left,
                      textInputAction: TextInputAction.next,
                      obscureText: visibilityPassword,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(16),
                        errorStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          backgroundColor: Colors.yellow,
                        ),

                        /*--- labelStyle ---*/
                        labelText: 'E-Mail',
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
                            Icons.email_rounded,
                          ),
                        ),

                        /*--- hintText ---*/
                        hintText: "Bitte die E-Mail eingeben",
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
                    ),
                    /*--------------------------------- Abstand ---*/
                    wbSizedBoxHeight32,
                    /*--------------------------------- Passwort - Feld ---*/
                    TextFormField(
                      validator: Validator.isValidPassword,
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
                        errorStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          backgroundColor: Colors.yellow,
                        ),

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
                    ),
                    /*--------------------------------- Abstand ---*/
                    wbSizedBoxHeight32,
                    /*--------------------------------- Passwort wiederholen ---*/
                    TextFormField(
                      validator: Validator.isValidPassword,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: wbColorButtonDarkRed,
                      ),
                      textAlign: TextAlign.left,
                      textInputAction: TextInputAction.next,
                      obscureText: visibilityPassword,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(16),
                        errorStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          backgroundColor: Colors.yellow,
                        ),

                        /*--- labelStyle ---*/
                        labelText: 'Passwort wiederholen',
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
                            Icons.lock,
                          ),
                        ),

                        /*--- hintText ---*/
                        hintText: "Bitte Passwort wiederholen",
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
                    ),
                    /*--------------------------------- Abstand ---*/
                    wbSizedBoxHeight32,
                    /*--------------------------------- Divider ---*/
                    const Divider(thickness: 4, color: wbColorButtonBlue),
                    /*--------------------------------- Abstand ---*/
                    wbSizedBoxHeight8,
                    /*--------------------------------- Registrieren-Button ---*/
                    GestureDetector(
                      onTap: () {
                        //   if (_registrationformKey.currentState!.validate()) {
                        //     log("Alles richtig gemacht :) ");
                        //     ScaffoldMessenger.of(context)
                        //         .showSnackBar(const SnackBar(
                        //       content: Text("Alle Felder korrekt ausgefüllt!"),
                        //     ));
                        //   } else {
                        //     log("Da sind noch Fehler in den Feldern");
                        //     ScaffoldMessenger.of(context)
                        //         .showSnackBar(const SnackBar(
                        //       content: Text("Bitte Felder richtig ausfüllen!"),
                        //     ));
                        //   }
                      },
                      child: WbButtonUniversal(
                          wbColor: wbColorButtonBlue,
                          icon: Icons.app_registration_outlined,
                          wbButtonUniversalText: "Jetzt REGISTRIEREN",
                          onButtonTap: () {
                            if (_registrationformKey.currentState!.validate()) {
                              log("Alles richtig gemacht");
                              player
                                  .play(AssetSource("sound/sound06pling.wav"));

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                backgroundColor: wbColorButtonGreen,
                                content: Text(
                                  "Die Registrierung wird jetzt durchgeführt ... Bitte warten ...",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                            } else {
                              log("Da sind noch Fehler in den Feldern");
                              // ACHTUNG: Beim player den sound OHNE "assets/...", sondern gleich mit "sound/..." eintragen (siehe unten):
                              ///player.play(AssetSource("sound/sound05xylophon.wav"));
                              // player.play(AssetSource("sound/sound06pling.wav"));
                              player.play(
                                  AssetSource("sound/sound03enterprise.wav"));

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                backgroundColor: wbColorButtonDarkRed,
                                content: Text(
                                  "Bitte noch die angezeigten Fehler korrigieren ... 😉",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                            }
                          },
                          width: 350),
                    ),
                    /*--------------------------------- Abstand ---*/
                    wbSizedBoxHeight16,
                    /*--------------------------------- Divider ---*/
                    const Divider(thickness: 4, color: wbColorButtonBlue),
                    /*--------------------------------- ENDE ---*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
