import 'package:flutter/material.dart';
import 'package:workbuddy/class/navigation_bar_green_neon.dart';

class SelectionPage extends StatelessWidget {
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

// Das kann man besser gestalten mit "xxx" --> und "SingleChildScrollView"
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
