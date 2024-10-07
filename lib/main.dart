import 'package:flutter/material.dart';
import "dart:developer";

void main() {
  runApp(const MainApp());
}

const primeColor =
    Color.fromRGBO(200, 210, 255, 1); // hellblau = fromRGBO(200, 210, 255, 1)

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // den gesamten Hintergrund einfärben:
        backgroundColor: primeColor,
        body: const SafeArea(
          child: Login(),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 146, 221, 255),
          // hier den Drawer mit SafeArea
          child: ListView(
            children: const [
              ListTile(
                title: Text("Einstellungen"),
                subtitle: Text("Ja genau hier"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Image "workbuddy_glow_logo" einbinden:
          const Padding(
            padding: EdgeInsets.fromLTRB(120, 0, 120, 20),
            child: Image(image: AssetImage("assets/workbuddy_glow_logo.png")),
          ),
          const Divider(
            thickness: 4,
            color: Colors.blue,
          ),

          const Text(
            "Herzlich willkommen bei",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 0, 80, 220)),
            textAlign: TextAlign.center,
          ),
          Container(height: 8),
          // Image "workbuddy_glow_schriftzug" einbinden:
          const Image(
              image: AssetImage("assets/workbuddy_glow_schriftzug.png")),
          const Text(
            "\"save time and money!\"",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 0, 80, 220)),
            textAlign: TextAlign.center,
          ),
          const Divider(
            thickness: 4,
            color: Colors.blue,
          ),
          Container(height: 32),
          const Text("Bitte melde Dich an:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 255, 0, 0)),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

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
                textAlign: TextAlign.center),
            Container(height: 60),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectionPage()),
                  );

                  // Code: soll einen Ton abspielen und ins Auswahlmenü wechseln // todo

                  // Scaffold.of(context).openDrawer();  // startet den Drawer

                  // final player = Audio.load("asset/sound05xylophon.wav");
                  // player.play();
                  /* NoSuchMethodError (NoSuchMethodError: The method 'play' was called on null.
                     Receiver: null
                     Tried calling: play("asset/sound05xylophon.wav")) */

                  // int soundId = await rootBundle
                  //     .load("assets/sound05xylophon.wav")
                  //     .then((ByteData soundData) {
                  //   /* NoSuchMethodError (NoSuchMethodError: Class 'String' has no instance method 'load'.
                  //      Receiver: "assets/sound05xylophon.wav"
                  //      Tried calling: load(_UnmodifiableByteDataView)) */
                  //   return pool.load(soundData);
                  // });
                  // await pool.play(soundId);

                  // AudioCache player = AudioCache();
                  // const alarmAudioPath = "sound05xylophon.wav";
                  // player.play(alarmAudioPath);
                },
                icon: const Icon(Icons.login, size: 34, fill: 1, weight: 80),
                label: const Text("  Login"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, // Textfarbe
                  backgroundColor: Colors.blue, // Buttonfarbe
                  shadowColor: Colors.black,
                  iconColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w900),
                )),
          ],
        ),
      ),
    );
  }
}

class Audio {
  static load(String s) {}
}

class AudioCache {
  void play(String alarmAudioPath) {}
}

// -----------------------------------------------------------------------------
class SelectionPage extends StatelessWidget {
// -----------------------------------------------------------------------------
  const SelectionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // den gesamten Hintergrund einfärben:
      backgroundColor: Colors.blue, // vorher: primeColor
      appBar: AppBar(
        title: const Text('Was möchtest Du tun?'),
        foregroundColor: Colors.white, // Schriftfarbe
        backgroundColor: const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
        shadowColor: Colors.black87, // funzt nicht
        elevation: 20, // graue Zone unter der AppBar
      ),

      body: const Center(
        child: Column(
          children: [
            Image(image: AssetImage("assets/workbuddy_patch_and_slogan.png")),

// Das kann man besser gestalten mit "xxx --> und SingleScroll"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
                SizedBox(
                  width: 180,
                  height: 200,
                  child: Image(
                      image: AssetImage("assets/icon_button_buchhaltung.png")),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                SizedBox(
                  width: 180,
                  height: 180,
                  child: Image(
                      image:
                          AssetImage("assets/icon_button_kommunikation.png")),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,
                  height: 200,
                  child:
                      Image(image: AssetImage("assets/icon_button_kunden.png")),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                SizedBox(
                  width: 180,
                  height: 200,
                  child:
                      Image(image: AssetImage("assets/icon_button_firmen.png")),
                ),
              ],
            ),
// -----------------------------------------------------------------------------
// Eigenen Divider mit Stack über der NavigationBar anlegen:
// -----------------------------------------------------------------------------
            //SizedBox(height: 0),
            //StackNeonGreenLine(),
            //Image(image: AssetImage("assets/neon_green_line.png")),
            //SizedBox(height: 20),
            //NavigationBarGreenNeon(),
            // DoubleImageNavigationBar(
            //     image1Path: 'assets/neon_green_line.png',
            //     image2Path: 'assets/neon_green_line.png'),
            //SizedBox(height: 20),
// -----------------------------------------------------------------------------
          ],
        ),
      ),
// -----------------------------------------------------------------------------
// NavigationBar unten:
// -----------------------------------------------------------------------------
      bottomNavigationBar: const NavigationBarGreenNeon(),
    );
  }
}
// -----------------------------------------------------------------------------
class NavigationBarGreenNeon extends StatelessWidget {
// -----------------------------------------------------------------------------
  const NavigationBarGreenNeon({
    super.key,
  });
  // final String image1Path = "assets/neon_green_line.png";
  // final String image2Path = "assets/neon_green_line.png";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NavigationBar(
          height: 130,
          elevation: 0,
          backgroundColor: Colors.blue,
          // labelBehavior
          selectedIndex: 0, //currentIndex,
          //selectedItemColor: Colors.black,
          //indicatorColor: Colors.black,
          onDestinationSelected: (int index) {
            log("Button $index geklickt");
            // currentIndex = index;
            // setState(() {});
          },
          destinations: const [
            // Icons horizontal angeordnet
            NavigationDestination(
              icon: Image(image: AssetImage("assets/button_info.png")),
              label: "Info",
              enabled: true,
            ),
            NavigationDestination(
              icon: Image(image: AssetImage("assets/button_settings.png")),
              label: "Einstellungen",
            ),
            NavigationDestination(
              icon: Image(image: AssetImage("assets/button_close.png")),
              label: "Beenden",
            ),
            NavigationDestination(
              icon: Image(image: AssetImage("assets/button_arrow_right.png")),
              label: "Weiter",
            ),
          ],
        ),

        //const SizedBox(height: 110),
        Positioned(
          //key: xxx,
          left: 0,
          //top: -90,
          right: 0,

          // --> Wenn die Icons NICHT beschriftet sind / NavigationBar height: 110
          bottom: 120, // neon_green_line bottom --> Unten: 10 / oder Oben: 120

          // --> Wenn die Icons beschriftet sind / NavigationBar height: 140
          // bottom: 45, // neon_green_line bottom --> Unten: 45 / oder Oben: 120
          height: 60,
          child: Image.asset("assets/neon_green_line.png"),
        ),
      ],
    );
  }
}
// -----------------------------------------------------------------------------
