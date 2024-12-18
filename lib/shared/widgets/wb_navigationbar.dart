import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/exit_app.dart';

class WbNavigationbar extends StatelessWidget {
  const WbNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    /*--------------------------------- NavigationBar ---*/
    return Container(
      width: MediaQuery.of(context).size.width, // gesamte Screen-Breite
      // width: 398,
      // height: 190,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.blue, Colors.black], //wbColorAppBarBlue
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.6],
        // tileMode: TileMode.mirror,
      )),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: NavigationBar(
          // backgroundColor ist transparent, damit LinearGradient sichtbar ist:
          backgroundColor: Colors.transparent,
          height: 110,
          elevation: 0,
          indicatorColor: Colors.black,
          selectedIndex: 0, //currentIndex,
          onDestinationSelected: (int index) {
            log("0022 - WbNavigationbar - Button-Index $index angeklickt");
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
              icon:
                  Image(image: AssetImage("assets/button_arrow_right.png")),
              label: "Weiter",
            ),
            NavigationDestination(
              icon: Image(image: AssetImage("assets/button_close.png")),
              label: "Beenden",
              selectedIcon: ExitApp(),
            ),
          ],
        ),
      ),
    );
  }
}
