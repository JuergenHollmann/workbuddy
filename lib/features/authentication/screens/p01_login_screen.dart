import 'package:flutter/material.dart';
import 'package:workbuddy/class/welcome_text.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/shared/widgets/w_b_green_button.dart';

class P01LoginScreen extends StatefulWidget {
  const P01LoginScreen({super.key});

  @override
  State<P01LoginScreen> createState() => _P01LoginScreenState();
}

/*--------------------------------- User + Passwort ---*/
const String userName = "Jürgen";
const String userPassword = "üpoiuztrewq";
bool visibilityPassword = false;

class _P01LoginScreenState extends State<P01LoginScreen> {
  /*--------------------------------- TextEditingController ---*/
  final TextEditingController userNameTEC = TextEditingController();
  final TextEditingController userPasswordTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*--------------------------------- WelcomeText ---*/
            const WelcomeText(),
            wbSizedBoxHeight32,
            /*--------------------------------- Benutzername - Überschrift ---*/
            // Container(height: 8),
            // const Text(
            //   "Benutzername",
            //   textScaler: TextScaler.linear(1.5),
            // ),

            /*--------------------------------- Benutzername - Feld ---*/
            TextFormField(
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: wbColorButtonGreen,
              ),
              textAlign: TextAlign.center,
              textInputAction: TextInputAction.next,
              //obscureText: visibilityPassword,

              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(16),
                labelStyle:
                    TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                labelText: 'Benutzername',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Icon(
                  size: 40,
                  Icons.person,
                ),

                // prefixIconConstraints: 16, todo

                hintText: "Bitte Benutzernamen eingeben",
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black38,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),

              // validator: (userNameTEC) {
              //   // Der Benutzername wurde nicht ausgefüllt:
              //   if (userNameTEC == null) {
              //     return "Bitte den Benutzernamen angeben!";

              //   }
              //   // Alles ist in Ordnung, keine Probleme
              //   return null;
              // },

              // onChanged: (password) {
              //   if (password.length >= 5) {
              //     emailController.text = "admin@gmail.com";
              //   }
              // },
            ),

            wbSizedBoxHeight32,
            /*--------------------------------- Benutzername - TextFormField---*/
            //           TextFormField(
            //             controller: userNameTEC,
            //             obscureText: passwordVisible,
            //             decoration: InputDecoration(border: const OutlineInputBorder(),

            //             suffixIcon: IconButton(
            //               icon: Icon(
            //                 passwordVisible
            //                 ? Icons.visibility_outlined
            //                 : Icons.visibility_off_outlined,
            //                 color: wbColorAppBarBlue
            //                 ),

            //               onPressed: setState(() {
            //                 passwordVisible = !passwordVisible;
            //               });
            // },
            //             ),
            //             ),

            //             // style: const TextStyle(
            //             //   fontSize: 24,
            //             //   fontWeight: FontWeight.w900,
            //             //   color: Colors.red,
            //             // ),
            //             // textAlign: TextAlign.center,
            //           ),

            /*--------------------------------- Passwort - Überschrift ---*/
            // Container(height: 32),
            // const Text(
            //   "Passwort",
            //   textScaler: TextScaler.linear(1.5),
            // ),

            /*--------------------------------- Passwort - Feld ---*/
            TextFormField(
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: wbColorButtonGreen,
              ),
              textAlign: TextAlign.center,
              textInputAction: TextInputAction.next,
              obscureText: visibilityPassword,

              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(16),
                labelStyle:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                labelText: 'Passwort',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: const Icon(
                  size: 40,
                  Icons.lock_outlined,
                ),
                //prefixIconConstraints: todo
                hintText: "Bitte das Passwort eingeben",
                hintStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black38,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      visibilityPassword = !visibilityPassword;
                    });
                  },
                  child: Icon(
                    size: 40,
                    visibilityPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),

                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),

              // validator: (userPassword) {
              //   // Password wurde garnicht ausgefüllt
              //   if (userPassword == null) {
              //     return "Bitte Passwort angeben";
              //   } else if (userPassword.length < 8) {
              //     // Passwort muss größer als 8 Zeichen sein
              //     return "Bitte 8 Zeichen angeben";
              //   }
              //   // Alles ist in Ordnung, keine Probleme
              //   return null;
              // },

              // onChanged: (password) {
              //   if (password.length >= 5) {
              //     emailController.text = "admin@gmail.com";
              //   }
              // },
            ),
            /*--------------------------------- Abstand ---*/
            wbSizedBoxHeight16,
            wbSizedBoxHeight16, //todo
            /*--------------------------------- Login-Button ---*/
            const WBGreenButton(),
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
      ),
    );
  }
}
