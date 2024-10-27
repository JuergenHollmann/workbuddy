import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/class/selection_screen.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/features/authentication/screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: wbBackgroundBlue,
        body: SafeArea(
          child: Column(
            children: [
              Login(),
            ],
          ),

          //     drawer: Drawer(
          //   backgroundColor: wbDrawerLightOrange,
          //   // hier den Drawer mit SafeArea
          //   child: ListView(
          //     children: const [
          //       ListTile(
          //         title: Text("Einstellungen"),
          //         subtitle: Text("Ja genau hier"),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}

class StartPageDrawer extends StatelessWidget {
  const StartPageDrawer({super.key, required Padding child});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // WICHTIG: Alle Paddings von der ListView entfernen!
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: wbDrawerLightOrange,
            ),
            child: Text('WorkBuddy'),
          ),
          ListTile(
            title: const Text('Über uns'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class WBGreenButton extends StatelessWidget {
  const WBGreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Button erstellen:
    return Container(
      width: 380,
      height: 60,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(4, 4),
            spreadRadius: 0,
          )
        ],
        color: wbColorButtonGreen,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        // shadows: const [
        //   BoxShadow(
        //     color: wbButtonShadowGrey,
        //     blurRadius: 5,
        //     offset: Offset(0, 12),
        //     spreadRadius: 0,
        //   )
        // ],
      ),
      child: GestureDetector(
        onTap: () {
          log("Wechsle zur Seite 2 = SelectionPage");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SelectionPage(),
            ),
          );
        },
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.input_outlined,
                    color: Colors.white,
                    size: 40,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),

                // Expanded(flex: 1, child:SizedBox.shrink( //todo (siehe 434/F4)
                Expanded(
                  //flex: 1,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 48,
                      ), // dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist )
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                          fontSize: 32,
                          // fontFamily: 'Roboto' oder 'SF Pro Display', soll ich die verwenden? todo?
                          fontWeight: FontWeight.w900,
                          // height: 1, // nur wenn der Text innerhalb des Buttons verschoben werden soll
                          letterSpacing: 2, // Zwischenraum der Buchtstaben
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WBRedButton extends StatelessWidget {
  const WBRedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Button erstellen:
    return Container(
      width: 380,
      height: 60,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(4, 4),
            spreadRadius: 0,
          )
        ],
        color: Colors.red,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        // shadows: const [
        //   BoxShadow(
        //     color: wbButtonShadowGrey,
        //     blurRadius: 5,
        //     offset: Offset(0, 12),
        //     spreadRadius: 0,
        //   )
        // ],
      ),
      child: GestureDetector(
        onTap: () {
// wechsle die Farbe des Buttons beim Anklicken:
// String color = isSunny ? 'yellow' : 'blue'; // ternärer Operator

          log("Wechsle zur Seite 2 = SelectionPage");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SelectionPage(),
            ),
          );
        },

        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.payments_outlined,
                    color: Colors.white,
                    size: 40,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),

                // Expanded(flex: 1, child:SizedBox.shrink( //todo (siehe 434/F4)
                Expanded(
                  //flex: 1,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 48,
                      ), // dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist )
                      child: Text(
                        'Ausgabe speichern',
                        style: TextStyle(
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                          fontSize: 20,
                          // fontFamily: 'Roboto' oder 'SF Pro Display', soll ich die verwenden? todo?
                          fontWeight: FontWeight.w900,
                          // height: 1, // nur wenn der Text innerhalb des Buttons verschoben werden soll
                          letterSpacing: 2, // Zwischenraum der Buchtstaben
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
