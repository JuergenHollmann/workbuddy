import 'package:flutter/material.dart';
//import 'package:workbuddy/class/selection_screen.dart';
import 'package:workbuddy/class/welcome_text.dart';
import 'package:workbuddy/main.dart';
import 'package:workbuddy/shared/widgets/w_b_green_button.dart';
//import 'package:workbuddy/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  //get pool => "assets/sound05xylophon.wav";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const WelcomeText(),
            Container(height: 8),
            const Text(
              "Benutzername",
              textScaler: TextScaler.linear(1.5),
            ),
            const TextField(
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 255, 0, 0)),
                textAlign: TextAlign.center),
            Container(height: 32),
            const Text(
              "Passwort",
              textScaler: TextScaler.linear(1.5),
            ),
            const TextField(
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(30, 130, 0, 1)), // grün
                textAlign: TextAlign.center,),
const SizedBox(height: 30),

const WBGreenButton(),


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
            //     label: const Text("  Login"),
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
