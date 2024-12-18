import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/exit_app.dart';

class WbNavigationbar extends StatelessWidget {
  const WbNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    /*--------------------------------- NavigationBar ---*/
    return Stack(
      children: [
        Container(
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
        ),

// Die grüne Neon-Linie "neon_green_line" wird vorübergehend ausgeblendet - 0047 - WbNavigationbar - wird nur in iOS richtig angezeigt, in Android nicht.
      //   Positioned(
      //     //key: xxx,
      //     left: 0,
      //     //top: -90,
      //     right: 0,

      //     // --> Wenn die Icons NICHT beschriftet sind / NavigationBar height: 110
      //     bottom: 120, // neon_green_line bottom --> Unten: 10 / oder Oben: 120

      //     // --> Wenn die Icons beschriftet sind / NavigationBar height: 140
      //     // bottom: 45, // neon_green_line bottom --> Unten: 45 / oder Oben: 120
      //     height: 60,
      //     child: Image.asset("assets/neon_green_line.png"),
      //   ),
      ],
    );
  }
}
