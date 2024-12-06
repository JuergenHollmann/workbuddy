import 'dart:developer';
import 'package:flutter/material.dart';

class NavigationBarGreenNeon extends StatelessWidget {
  const NavigationBarGreenNeon({super.key});
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
            log("0022 - NavigationBarGreenNeon - Button-Index $index angeklickt");
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
