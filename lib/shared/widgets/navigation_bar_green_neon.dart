import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/exit_app.dart';
import 'package:workbuddy/config/wb_colors.dart';

class NavigationBarGreenNeon extends StatelessWidget {
  const NavigationBarGreenNeon({super.key});

  @override
  Widget build(BuildContext context) {
    //     /*--------------------------------- funzt nicht mit 4 Buttons ---*/
    // int currentIndex = 1;
    // return BottomNavigationBar(
    //   useLegacyColorScheme: false,
    //   backgroundColor: Colors.blue,
    //   fixedColor: Colors.white,
    //   selectedLabelStyle: const TextStyle(
    //     color: Colors.white,
    //     fontSize: 16,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   unselectedLabelStyle: const TextStyle(
    //     color: Colors.white,
    //     fontSize: 16,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   items: [
    //     /*--------------------------------- Button 1 ---*/
    //     BottomNavigationBarItem(
    //       icon: InkWell(
    //         onTap: () async {
    //           log('0028 - NavigationBarGreenNeon - Button 1 angeklickt');
    //         },
    //         child: Image(
    //           image: AssetImage("assets/button_info.png"),
    //           width: 50,
    //           height: 50,
    //         ),
    //       ),
    //       label: 'Info',
    //     ),
    //     /*--------------------------------- Button 2 ---*/
    //     BottomNavigationBarItem(
    //       icon: InkWell(
    //         onTap: () async {
    //           log('0044 - NavigationBarGreenNeon - Button 2 angeklickt');
    //         },
    //         child: Image(
    //           image: AssetImage("assets/button_settings.png"),
    //           width: 50,
    //           height: 50,
    //         ),
    //       ),
    //       label: 'Settings',
    //     ),
    //     /*--------------------------------- Button 3 ---*/
    //     BottomNavigationBarItem(
    //       icon: InkWell(
    //         onTap: () {
    //           log('0058 - NavigationBarGreenNeon - Button 3 angeklickt');
    //           /*--------------------------------- *** ---*/
    //           WBDialog2Buttons(
    //             headLineText: 'Beenden',
    //             descriptionText: 'Beenden',
    //             //   actions: [
    //             //     /*--------------------------------- Abstand ---*/
    //             //     wbSizedBoxHeight24,
    //             //     /*--------------------------------- Button 1 ---*/
    //             //     WbButtonUniversal2(
    //             //       wbColor: wbColorButtonGreen,
    //             //       wbIcon: Icons.report_outlined,
    //             //       wbIconSize40: 40,
    //             //       wbText: "Nein",
    //             //       wbFontSize24: 24,
    //             //       wbWidth155: 162,
    //             //       wbHeight60: 60,
    //             //       wbOnTap: () {
    //             //         Navigator.pop(context);
    //             //         /*--------------------------------- Snackbar ---*/
    //             //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //             //           backgroundColor: wbColorButtonGreen,
    //             //           duration: Duration(milliseconds: 800),
    //             //           content: Text(
    //             //             "Die App wurde NICHT beendet ... 😉",
    //             //             style: TextStyle(
    //             //               fontSize: 28,
    //             //               fontWeight: FontWeight.bold,
    //             //               color: Colors.white,
    //             //             ),
    //             //           ),
    //             //         ));
    //             //         /*--------------------------------- *** ---*/
    //             //         log("192 - lib/config/wb_navigation_bar.dart");
    //             //       },
    //             //     ),
    //             //     /*--------------------------------- *** ---*/
    //             //     wbSizedBoxHeight24,
    //             //     /*--------------------------------- Button 2 ---*/
    //             //     WbButtonUniversal2(
    //             //       wbColor: wbColorButtonDarkRed,
    //             //       wbIcon: Icons.dangerous_outlined,
    //             //       wbIconSize40: 40,
    //             //       wbText: "Ja • Beenden",
    //             //       wbFontSize24: 20,
    //             //       wbWidth155: 284,
    //             //       wbHeight60: 60,
    //             //       wbOnTap: () {
    //             //         Navigator.pop(context);
    //             //         /*--------------------------------- *** ---*/
    //             //         FlutterExitApp.exitApp(iosForceExit: true);
    //             //       },
    //             //     ),
    //             //     /*--------------------------------- *** ---*/
    //             //   ],
    //           );
    //           FlutterExitApp.exitApp(iosForceExit: true);
    //         },
    //         child: Image(
    //           image: AssetImage("assets/button_close.png"),
    //           width: 50,
    //           height: 50,
    //         ),
    //       ),
    //       label: 'Beenden', //'Beenden',
    //     ),
    //     /*--------------------------------- Button 4 ---*/
    //     BottomNavigationBarItem(
    //       icon: InkWell(
    //         onTap: () async {
    //           log('0070 - NavigationBarGreenNeon - Button 4 angeklickt');
    //         },
    //         child: Image(
    //           image: AssetImage("assets/button_close.png"),
    //           width: 50,
    //           height: 50,
    //         ),
    //       ),
    //       label: 'x',
    //     ),

    //     /*--------------------------------- *** ---*/
    //     // BottomNavigationBarItem(
    //     //     icon: InkWell(
    //     //       onTap: () async {
    //     //       },
    //     //       child: Container(
    //     //         height: 47,
    //     //         width: 50,
    //     //         decoration: const BoxDecoration(
    //     //             shape: BoxShape.circle, color: Colors.black38),
    //     //         child: const Icon(
    //     //           Icons.add,
    //     //           size: 32,
    //     //           color: Colors.white,
    //     //         ),
    //     //       ),
    //     //     ),
    //     //     label: 'Plus')
    //   ],
    // );

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

// Die grüne Neon-Linie "neon_green_line" wird vorübergehend ausgeblendet - 0047 - NavigationBarGreenNeon
        // Positioned(
        //   //key: xxx,
        //   left: 0,
        //   //top: -90,
        //   right: 0,

        //   // --> Wenn die Icons NICHT beschriftet sind / NavigationBar height: 110
        //   bottom: 120, // neon_green_line bottom --> Unten: 10 / oder Oben: 120

        //   // --> Wenn die Icons beschriftet sind / NavigationBar height: 140
        //   // bottom: 45, // neon_green_line bottom --> Unten: 45 / oder Oben: 120
        //   height: 60,
        //   child: Image.asset("assets/neon_green_line.png"),
        // ),
      ],
    );
  }
}
