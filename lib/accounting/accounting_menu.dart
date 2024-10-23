import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/accounting/accounting_screen.dart';
import 'package:workbuddy/config/wb_button_uni_shadow.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';

class AccountingMenu extends StatelessWidget {
  const AccountingMenu({super.key});
  @override
  Widget build(BuildContext context) {
    // final List<String> entries = <String>[
    //   "Eine Buchung erfassen",
    //   "Eine Buchung erfassen",
    //   "Eine Buchung erfassen",
    //   "Eine Buchung erfassen",
    //   "Eine Buchung erfassen",
    //   "Eine Buchung erfassen",
    // ];

    // final GlobalKey _buttonKey = GlobalKey();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      appBar: AppBar(
        title: const Text(
          'Was möchtest Du tun?',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),
      //    body: SingleChildScrollView(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage("assets/workbuddy_glow_schriftzug.png"),
            ),
            const Divider(thickness: 3, height: 32, color: wbLogoBlue),
            Expanded(
                child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                // ---------- Eine Ausgabe erfassen ----------
                GestureDetector(
                  onTap: () {
                    log("Auf - AccountingMenu - Eine Ausgabe erfassen - angeklickt");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountingScreen(),
                      ),
                    );
                  },
                  child: const WbButtonUniShadow(
                    wbColor: wbButtonDarkRed,
                    wbButtonUniShadowText: "Eine Ausgabe erfassen",
                  ),
                ),

                wbNormSpaceBetweenTextFields,
                const Divider(thickness: 3, height: 32, color: wbLogoBlue),

                // ---------- Eine Einnahme erfassen ----------
                GestureDetector(
                  onTap: () {
                    log("Auf - AccountingMenu - Eine Einnahme erfassen - angeklickt");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountingScreen(),
                        // auf der Seite "AccountingScreen" die Einstellung "groupValue = Einnahme" automatisch anklicken:
                        // AccountingScreen.groupValue.toExternalReference(groupValue.name: "Einnahme"),
                        // groupValue = "Einnahme",

                      ),
                    );
                  },
                  child: const WbButtonUniShadow(
                    wbColor: wbOKButtonGreen,
                    wbButtonUniShadowText: "Eine Einnahme erfassen",
                  ),
                ),

                // ---------- Übersicht aller Ausgaben ----------
                wbNormSpaceBetweenTextFields,
                const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                GestureDetector(
                  onTap: () {
                    log("Auf - AccountingMenu - Übersicht aller Ausgaben - angeklickt");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountingScreen(),
                      ),
                    );
                  },
                  child: const WbButtonUniShadow(
                    wbColor: wbAppBarBlue,
                    wbButtonUniShadowText: "Übersicht aller Ausgaben",
                  ),
                ),

                // ---------- Übersicht aller Einnahmen ----------
                wbNormSpaceBetweenTextFields,
                //const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                GestureDetector(
                  onTap: () {
                    log("Auf - AccountingMenu - Übersicht aller Einnahmen - angeklickt");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountingScreen(),
                      ),
                    );
                  },
                  child: const WbButtonUniShadow(
                    wbColor: wbAppBarBlue,
                    wbButtonUniShadowText: "Übersicht aller Einnahmen",
                  ),
                ),

                // ---------- Ausgaben-Beleg finden ----------
                wbNormSpaceBetweenTextFields,
                const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                GestureDetector(
                  onTap: () {
                    log("Auf - AccountingMenu - Ausgaben-Beleg finden - angeklickt");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountingScreen(),
                      ),
                    );
                  },
                  child: const WbButtonUniShadow(
                    wbColor: Color.fromRGBO(195, 117, 0, 1),
                    wbButtonUniShadowText: " Ausgaben-Beleg finden",
                  ),
                ),

                // ---------- Einnahme-Beleg finden ----------
                wbNormSpaceBetweenTextFields,
                // const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                GestureDetector(
                  onTap: () {
                    log("Auf - AccountingMenu - Einnahme-Beleg finden - angeklickt");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountingScreen(),
                      ),
                    );
                  },
                  child: const WbButtonUniShadow(
                    wbColor: Color.fromRGBO(195, 117, 0, 1),
                    wbButtonUniShadowText: " Einnahme-Beleg finden",
                  ),
                ),

                // ---------- ENDE der ListView ----------
                wbNormSpaceBetweenTextFields,
                const Divider(thickness: 3, height: 32, color: wbLogoBlue),
              ],
            )

                // child: ListView.separated(
                //   padding: const EdgeInsets.all(8),
                //   itemCount: entries.length,
                //   itemBuilder: (context, index) {
                //     return const WbButtonUniversal(
                //       wbColor: wbAppBarBlue,
                //       wbButtonUniversalText: "wbButtonUniversalText",
                //     );

                //     // return const WbButtonUniversal(
                //     //   wbColor: wbAppBarBlue,
                //     //   iconSelector: Icon(Icons.accessible_sharp),
                //     // );

                //     // return Container(
                //     //   height: 80,
                //     //   color: Colors.blue,
                //     //   child: Text(
                //     //     entries[index],
                //     //     style: const TextStyle(
                //     //       fontSize: 30,
                //     //       fontWeight: FontWeight.w900,
                //     //       color: Colors.white, // Schriftfarbe
                //     //     ),
                //     //   ),
                //     // );
                //   },
                //   separatorBuilder: (BuildContext context, int index) =>
                //       // const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                //       const SizedBox(height: 32),
                // ),
                ),
            const Divider(thickness: 3, height: 32, color: wbLogoBlue),
          ],
        ),
      ),
      //   ),
    );
  }
}
