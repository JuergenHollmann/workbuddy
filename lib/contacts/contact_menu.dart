import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_universal.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/contacts/contact_screen.dart';
import 'package:workbuddy/shared/widgets/wb_dialog_alert_update_coming_soon.dart';
import 'package:workbuddy/shared/widgets/wb_divider_with_big_text_center.dart';

class ContactMenu extends StatelessWidget {
  const ContactMenu({super.key});
  @override
  Widget build(BuildContext context) {
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

            // --------------------------------------- Buchhaltung-Menü ---
            const WbDividerWithBigTextCenter(wbDividerText: "Kontakte"),

            // --------------------------------------- Listview mit AuswahlButtons ---
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  // --------------------------------------- Kontakt neu anlegen ---
                  GestureDetector(
                    onTap: () {
                      log("Auf - ContactMenu - Einen Kontakt neu anlegen - angeklickt");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactScreen(),
                        ),
                      );
                    },

                    /* Dieser Button ist OHNE Icon (nur Text und Farbe) */
                    // child: const WbButtonUniShadow(
                    //     wbColor: wbColorButtonDarkRed,
                    //     wbButtonUniShadowText: "Ausgabe buchen"),

                    child: WbButtonUniversal(
                      wbColor: wbColorButtonGreen,
                      wbButtonUniversalText: "Einen Kontakt \nNEU anlegen",
                      icon: Icons.person_add_alt_1_outlined,
                      onButtonTap:
                          /* das geht hier nur, weil es eine (leere) Funktion ist. */
                          () {},
                      width: 398,
                    ),
                  ),

                  wbSizedBoxHeight8,

                  // // ---------- Eine Einnahme buchen ----------
                  // GestureDetector(
                  //   onTap: () {
                  //     log("Auf - ContactMenu - Eine Einnahme buchen - angeklickt");
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const AccountingScreen(
                  //           startGroupValue: "Einnahme",
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   child: WbButtonUniversal(
                  //     wbColor: wbColorButtonGreen,
                  //     wbButtonUniversalText: "Einnahme buchen",
                  //     icon: Icons
                  //         .add_card_outlined, // credit_score_outlined, //payments_outlined,
                  //     onButtonTap: () {},
                  //     /* das geht hier nur, weil es eine (leere) Funktion ist. */
                  //     width: 398,
                  //   ),
                  // ),

                  // ---------- Einen Kontakt suchen ----------
                  // wbSizedBoxHeight16,
                  const Divider(thickness: 3, height: 32, color: wbLogoBlue),

                  GestureDetector(
                    onTap: () {
                      log("Auf - ContactMenu - Einen Kontakt suchen - Update-Hinweis - CM108 - angeklickt");
                      showDialog(
                        context: context,
                        builder: (context) =>
                            const WbDialogAlertUpdateComingSoon(
                          headlineText: 'Update-Hinweis - CM108',
                          contentText:
                              'Diese Funktion kommt bald in einem kostenlosen Update!',
                        ),
                      );
                    },

                    /* Dieser Button ist OHNE Icon (nur Text und Farbe) */
                    // child: const WbButtonUniShadow(
                    //     wbColor: wbColorButtonDarkRed,
                    //     wbButtonUniShadowText: "Alle Ausgaben zeigen"),

                    child: WbButtonUniversal(
                      wbColor: wbColorAppBarBlue,
                      wbButtonUniversalText: "Einen Kontakt \nSUCHEN",
                      icon: Icons.person_search_outlined,
                      onButtonTap: () {},
                      width: 398,
                    ),
                  ),

                  // ---------- Übersicht ----------
                  wbSizedBoxHeight16,
                  //const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                  GestureDetector(
                    onTap: () {
                      log("Update-Hinweis - AM141");
                      showDialog(
                        context: context,
                        builder: (context) =>
                            const WbDialogAlertUpdateComingSoon(
                          headlineText: 'Update-Hinweis - AM141',
                          contentText:
                              'Diese Funktion kommt bald in einem kostenlosen Update!',
                        ),
                      );
                    },
                    child: WbButtonUniversal(
                      wbColor: wbColorAppBarBlue,
                      wbButtonUniversalText: "- reserviert -",
                      icon: Icons.receipt_long_outlined,
                      onButtonTap: () {},
                      width: 398,
                    ),
                  ),

                  // ---------- Ausgaben-Beleg finden ----------
                  wbSizedBoxHeight16,
                  const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                  GestureDetector(
                    onTap: () {
                      log("Update-Hinweis - AM164");
                      showDialog(
                        context: context,
                        builder: (context) =>
                            const WbDialogAlertUpdateComingSoon(
                          headlineText: 'Update-Hinweis - AM164',
                          contentText:
                              'Diese Funktion kommt bald in einem kostenlosen Update!',
                        ),
                      );
                    },
                    child: WbButtonUniversal(
                      wbColor: wbColorOrangeDarker,
                      wbButtonUniversalText: "- reserviert -",
                      icon: Icons.manage_search_outlined,
                      onButtonTap: () {},
                      width: 398,
                    ),
                  ),

                  // ---------- Einnahme-Beleg finden ----------
                  wbSizedBoxHeight16,
                  // const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                  GestureDetector(
                    onTap: () {
                      log("Update-Hinweis - AM188");
                      showDialog(
                        context: context,
                        builder: (context) =>
                            const WbDialogAlertUpdateComingSoon(
                          headlineText: 'Update-Hinweis - AM188',
                          contentText:
                              'Diese Funktion kommt bald in einem kostenlosen Update!',
                        ),
                      );
                    },
                    child: WbButtonUniversal(
                      wbColor: wbColorOrangeDarker,
                      wbButtonUniversalText: "- reserviert -",
                      icon: Icons.query_stats, //receipt_long_outlined,
                      onButtonTap: () {}, width: 398,
                    ),
                  ),

                  wbSizedBoxHeight16,
                  const Divider(thickness: 3, height: 32, color: wbLogoBlue),

                  const Column(
                    children: [
                      Text("WorkBuddy - save time and money - Version 0.001"),
                    ],
                  ),
                ],
              ),
            ),
            /* ----------------- ENDE der ListView ---------------- */
            const Divider(thickness: 3, height: 32, color: wbLogoBlue),
          ],
        ),
      ),
      //   ),
    );
  }
}
