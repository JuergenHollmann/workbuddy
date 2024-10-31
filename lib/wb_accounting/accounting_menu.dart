import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/wb_accounting/accounting_screen.dart';
import 'package:workbuddy/config/wb_button_universal.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/shared/widgets/wb_dialog_alert_update_coming_soon.dart';
import 'package:workbuddy/shared/widgets/wb_divider_with_big_text_center.dart';

class AccountingMenu extends StatelessWidget {
  const AccountingMenu({super.key});
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
        backgroundColor: wbColorBackgroundBlue, // Hintergrundfarbe
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

            // ------------------------------------------------------- Buchhaltung-Menü ---
            const WbDividerWithBigTextCenter(wbDividerText: "Buchhaltung"),
            // ------------------------------------------------------- Listview mit AuswahlButtons ---

            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  //*-------------------------------------------------- Ausgabe buchen ---*/
                  GestureDetector(
                    onTap: () {
                      log("Auf - AccountingMenu - Eine Ausgabe buchen - angeklickt");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountingScreen(
                            startGroupValue: "Ausgabe",
                          ),
                        ),
                      );
                    },

                    /* Dieser Button ist OHNE Icon (nur Text und Farbe) */
                    // child: const WbButtonUniShadow(
                    //     wbColor: wbColorButtonDarkRed,
                    //     wbButtonUniShadowText: "Ausgabe buchen"),

                    child: WbButtonUniversal(
                      wbColor: wbColorButtonDarkRed,
                      wbButtonUniversalText: "Ausgabe buchen",
                      icon: Icons
                          .payments_outlined, // credit_card, // add_shopping_cart,
                      onButtonTap:
                          /* das geht hier nur, weil es eine (leere) Funktion ist. */
                          () {},
                      width: 398,
                    ),
                  ),

                  wbSizedBoxHeight16,

                  //*-------------------------------------------------- Einnahme buchen ---*/
                  GestureDetector(
                    onTap: () {
                      log("Auf - AccountingMenu - Eine Einnahme buchen - angeklickt");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountingScreen(
                            startGroupValue: "Einnahme",
                          ),
                        ),
                      );
                    },
                    child: WbButtonUniversal(
                      wbColor: wbColorButtonGreen,
                      wbButtonUniversalText: "Einnahme buchen",
                      icon: Icons
                          .add_card_outlined, // credit_score_outlined, //payments_outlined,
                      onButtonTap: () {},
                      /* das geht hier nur, weil es eine (leere) Funktion ist. */
                      width: 398,
                    ),
                  ),

                  // ---------- Übersicht aller Ausgaben ----------
                  wbSizedBoxHeight8,
                  const Divider(
                      thickness: 3, height: 32, color: wbColorLogoBlue),

                  GestureDetector(
                    onTap: () {
                      log("Auf - AccountingMenu - Übersicht aller Ausgaben - Update-Hinweis - AM116 - angeklickt");
                      showDialog(
                        context: context,
                        builder: (context) =>
                            const WbDialogAlertUpdateComingSoon(
                          headlineText: 'Update-Hinweis - AM116',
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
                      wbButtonUniversalText: "Alle Ausgaben",
                      icon: Icons.receipt_long_outlined,
                      onButtonTap: () {},
                      width: 398,
                    ),
                  ),

                  // ---------- Übersicht aller Einnahmen ----------
                  wbSizedBoxHeight16,
                  //const Divider(thickness: 3, height: 32, color: wbColorLogoBlue),
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
                      wbButtonUniversalText: "Alle Einnahmen",
                      icon: Icons.receipt_long_outlined,
                      onButtonTap: () {},
                      width: 398,
                    ),
                  ),

                  // ---------- Ausgaben-Beleg finden ----------
                  wbSizedBoxHeight8,
                  const Divider(
                      thickness: 3, height: 32, color: wbColorLogoBlue),
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
                      wbButtonUniversalText: "Ausgaben finden",
                      icon: Icons.manage_search_outlined,
                      onButtonTap: () {},
                      width: 398,
                    ),
                  ),

                  // ---------- Einnahme-Beleg finden ----------
                  wbSizedBoxHeight16,
                  // const Divider(thickness: 3, height: 32, color: wbColorLogoBlue),
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
                      wbButtonUniversalText: "Einnahmen finden",
                      icon: Icons.query_stats, //receipt_long_outlined,
                      onButtonTap: () {}, width: 398,
                    ),
                  ),

                  wbSizedBoxHeight8,
                  const Divider(
                      thickness: 3, height: 32, color: wbColorLogoBlue),

                  const Column(
                    children: [
                      Text("WorkBuddy - save time and money - Version 0.001"),
                    ],
                  ),
                ],
              ),
            ),
            /* ----------------- ENDE der ListView ---------------- */
            const Divider(thickness: 3, height: 32, color: wbColorLogoBlue),
          ],
        ),
      ),
      //   ),
    );
  }
}
