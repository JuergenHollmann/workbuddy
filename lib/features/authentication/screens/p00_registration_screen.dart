import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_universal.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/shared/widgets/w_b_green_button.dart';

class P00RegistrationScreen extends StatefulWidget {
  const P00RegistrationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _P00RegistrationScreenState();
}

/*--------------------------------- User + Passwort ---*/
const String userName = "Jürgen";
const String userPassword = "pass";
// bool visibilityPassword = false;
bool loginButtonIsEnabled = false;

class _P00RegistrationScreenState extends State<P00RegistrationScreen> {
  // Brauchen wir, damit wir alle TextFormFields validieren können
  final GlobalKey<FormState> _registrationformKey = GlobalKey<FormState>();

  late AudioPlayer player = AudioPlayer();

  final TextEditingController userNameTEC = TextEditingController();
  final TextEditingController userPasswordTEC = TextEditingController();

  bool visibilityPassword = false;
  String inputUserName = ""; // nur für die "onChanged-Funktion"
  String inputPassword = ""; // nur für die "onChanged-Funktion"

  /*--------------------------------- isValidEmail ---*/
  String? isValidEmail(String? value) {
    // E-Mail soll aus Zeichen bestehen, also nicht leer sein.
    if (value == null) return "Die E-Mail muss angegeben werden! ";
    // E-Mail soll mindestens 5 Zeichen lang sein (a@b.d)
    if (value.length < 5) return "Die E-Mail benötigt mindestens 5 Zeichen!";
    // E-Mail soll ein "@" enthalten.
    if (!value.contains("@")) return "Die E-Mail muss ein @ enthalten!";
    return null;
  }

  /*--------------------------------- isValidPassword ---*/
  String? isValidPassword(String? value) {
    // Passwort soll nicht null oder leer sein.
    if (value == null || value.isEmpty) {
      return "Ein Password muss angegeben werden!";
    }
    // Passwort soll 4 Zeichen oder länger sein.
    if (value.length <= 4) {
      return "Das Passwort muss mindestens 4 Zeichen haben!";
    }
    // // Password soll mindestens ein Sonderzeichen enthalten (!§$%&/()=?)
    // if (value.)

    return null;
  }

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
              child: TextFormField(
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
                      loginButtonIsEnabled = true; // funzt nicht
                      WBGreenButton(onTap: () {}); // funzt nicht
                    });
                  } else {
                    log("Die Eingabe für den Benutzername ist NICHT korrekt!");
                    //const WBGreenButton(onTap: null); // funzt nicht
                  }
                },

                /*--- validator ---*/
                // validator: (String? value) {
                //   if (value != null &&
                //       (value.length < 3 || value.length > 32)) {
                //     return "Der Benutzername ist zu kurz oder zu Lang!";
                //   }
                //   // wenn null zurückgegeben wird, ist alles OK hier:
                //   return null;
                // },

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
              /*--------------------------------- E-Mail - Feld ---*/
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
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(16),

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

                /*--- validator ---*/
                validator: (userPassword) {
                  // Password wurde nicht ausgefüllt:
                  if (userPassword == null) {
                    log("Password wurde nicht ausgefüllt");
                    return "Bitte Passwort angeben";
                  } else if (userPassword == "üpoiuztrewq") {
                    log("Password ist korrekt");
                    return "Passwort ist korrekt";
                  }

                  //Passwort und Benutzername sind beide korrekt:
                  return null;
                },
              ),
              /*--------------------------------- Abstand ---*/
              wbSizedBoxHeight32,
              // /*--------------------------------- E-Mail wiederholen ---*/
              // TextFormField(
              //   //validator: isValidEmail(),
              //   style: const TextStyle(
              //     fontSize: 28,
              //     fontWeight: FontWeight.w900,
              //     color: wbColorButtonDarkRed,
              //   ),
              //   textAlign: TextAlign.left,
              //   textInputAction: TextInputAction.next,
              //   obscureText: visibilityPassword,
              //   decoration: const InputDecoration(
              //     filled: true,
              //     fillColor: Colors.white,
              //     contentPadding: EdgeInsets.all(16),

              //     /*--- labelStyle ---*/
              //     labelText: 'E-Mail wiederholen',
              //     labelStyle: TextStyle(
              //       fontSize: 28,
              //       fontWeight: FontWeight.bold,
              //       backgroundColor: Colors.white,
              //     ),

              //     /*--- prefixIcon ---*/
              //     prefixIcon: Padding(
              //       padding: EdgeInsets.all(16),
              //       child: Icon(
              //         size: 40,
              //         Icons.email_rounded,
              //       ),
              //     ),

              //     /*--- hintText ---*/
              //     hintText: "Bitte die E-Mail wiederholen",
              //     hintStyle: TextStyle(
              //       fontSize: 18,
              //       fontWeight: FontWeight.w900,
              //       color: Colors.black38,
              //     ),

              //     /*--- border ---*/
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(16)),
              //     ),
              //   ),

              //   /*--- onChanged ---*/
              //   onChanged: (String newInputPassword) {
              //     log("Eingabe: $newInputPassword");
              //     inputPassword = newInputPassword;
              //     setState(() => inputPassword = newInputPassword);
              //     if (newInputPassword == userPassword) {
              //       log("Das Passwort $userPassword ist KORREKT!");
              //       // ACHTUNG: Beim player den sound OHNE "assets/...", sondern gleich mit "sound/..." eintragen (siehe unten):
              //       player.play(AssetSource("sound/sound06pling.wav"));
              //     } else {
              //       log("Die Eingabe für das Passwort ist NICHT korrekt!");
              //     }
              //   },

              //   /*--- validator ---*/
              //   validator: (userPassword) {
              //     // Password wurde nicht ausgefüllt:
              //     if (userPassword == null) {
              //       // return "Bitte Passwort angeben";
              //       log("Password wurde nicht ausgefüllt");
              //     } else if (userPassword == "üpoiuztrewq") {
              //       // return "Passwort ist korrekt";
              //       log("Password ist korrekt");
              //     }
              //     // Passwort und Benutzername sind beide korrekt:
              //     return null;
              //   },
              // ),
              // /*--------------------------------- Abstand ---*/
              // wbSizedBoxHeight32,
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
              wbSizedBoxHeight32,

              /*--------------------------------- Passwort wiederholen ---*/
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
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(16),

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
            ),
            /*--------------------------------- Abstand ---*/
            wbSizedBoxHeight8,

            // /*--------------------------------- Text ---*/
            // const Text(
            //   "Passwort vergessen?",
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.w900,
            //     color: wbColorButtonDarkRed,
            //   ),
            //   textAlign: TextAlign.right,
            // ),
            /*--------------------------------- Divider ---*/
            const Divider(thickness: 4, color: wbColorButtonBlue),
            /*--------------------------------- Abstand ---*/
            wbSizedBoxHeight8,
            /*--------------------------------- Registrieren-Button ---*/
            WbButtonUniversal(
                wbColor: wbColorButtonBlue,
                icon: Icons.app_registration_outlined,
                wbButtonUniversalText: "Jetzt REGISTRIEREN",
                onButtonTap: () {},
                width: 398),
            /*--------------------------------- Abstand ---*/
            wbSizedBoxHeight16,
            /*--------------------------------- Divider ---*/
            const Divider(thickness: 4, color: wbColorButtonBlue),
            /*--------------------------------- Text ---*/
            // const Text(
            //   "Registrierung",
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.w900,
            //     color: wbColorButtonGreen,
            //   ),
            //   textAlign: TextAlign.right,
            // ),
            /*--------------------------------- Divider ---*/
            // const Divider(thickness: 4, color: wbColorButtonGreen),
            /*--------------------------------- ENDE ---*/
          ],
        ),
      ),
    );
  }
}
