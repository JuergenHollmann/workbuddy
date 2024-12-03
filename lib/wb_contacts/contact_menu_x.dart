import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_universal.dart';
import 'package:workbuddy/config/wb_button_universal_2.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/shared/widgets/wb_dialog_alert_update_coming_soon.dart';
import 'package:workbuddy/shared/widgets/wb_divider_with_text_in_center.dart';
import 'package:workbuddy/wb_contacts/contact_screen.dart';

class ContactMenuX extends StatelessWidget {
  const ContactMenuX({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      appBar: AppBar(
        title: const Text(
          'Was möchtest Du tun?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbColorBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),
      //    body: SingleChildScrollView(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage("assets/workbuddy_glow_schriftzug.png"),
              ),
              // --------------------------------------- Kontakte-Menü ---
              const WbDividerWithTextInCenter(
                wbColor: wbColorLogoBlue,
                wbText: "Kontakte",
                wbTextColor: wbColorLogoBlue,
                wbFontSize12: 28,
                wbHeight3: 3,
              ),
              // --------------------------------------- Listview mit AuswahlButtons ---
              Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      /*--------------------------------- Kontakt NEU anlegen ---*/
                      GestureDetector(
                        onTap: () {
                          log("0056 - contact_menu - Einen Kontakt NEU anlegen - angeklickt");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactScreen(),
                            ),
                          );
                        },
                        child: WbButtonUniversal(
                          wbColor: wbColorButtonGreen,
                          wbButtonUniversalText: "Einen Kontakt \nNEU anlegen",
                          icon: Icons.person_add_alt_1_outlined,
                          onButtonTap: () {
                            // log("0069 - contact_menu - Einen Kontakt NEU anlegen - angeklickt");
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const ContactScreen(),
                            //   ),
                            // );
                          },
                          width: 398,
                        ),
                      ),
                      wbSizedBoxHeight8,
                      const Divider(
                          thickness: 3, height: 32, color: wbColorLogoBlue),
                      GestureDetector(
                        onTap: () {
                          log("0085 - contact_menu - Einen Kontakt suchen - Update-Hinweis - CM108 - angeklickt");
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
                        child: WbButtonUniversal(
                          wbColor: wbColorAppBarBlue,
                          wbButtonUniversalText:
                              "ALLE Kontakte zeigen\nmit SUCH-Funktion",
                          icon: Icons.person_search_outlined,
                          onButtonTap: () {},
                          width: 398,
                        ),
                      ),
                      wbSizedBoxHeight8,
                      const Divider(
                          thickness: 3, height: 32, color: wbColorLogoBlue),
                      WbButtonUniversal2(
                        wbColor: const Color.fromARGB(255, 255, 102, 219),
                        wbIcon: Icons.forward_to_inbox_outlined,
                        wbIconSize40: 40,
                        wbText:
                            "Möchtest Du\nMEHR Funktionen?\nSchreibe einfach eine\nE-Mail an den Entwickler.",
                        wbFontSize24: 15,
                        wbWidth155: 398,
                        wbHeight60: 130,
                        wbOnTap: () {},
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
