import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_universal_2.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/screens/email_screen_p043.dart';
import 'package:workbuddy/shared/widgets/wb_buttons_uni_with_image_button.dart';
import 'package:workbuddy/shared/widgets/wb_divider_with_text_in_center.dart';

class CommunicationMenu extends StatelessWidget {
  const CommunicationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      /*--------------------------------- *** ---*/
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
      /*--------------------------------- *** ---*/
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage("assets/workbuddy_glow_schriftzug.png"),
            ),
            // --------------------------------------- Kommunikation-Menü ---
            const WbDividerWithTextInCenter(
              wbColor: wbColorLogoBlue,
              wbText: "Kommunikation",
              wbTextColor: wbColorLogoBlue,
              wbFontSize12: 28,
              wbHeight3: 3,
            ),
            /*--------------------------------- Listview mit AuswahlButtons ---*/
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  /*--------------------------------- WbButtonUniversal2 - Telefonanruf ---*/
                  WbButtonsUniWithImageButton(
                    wbColor: wbColorButtonDarkRed,
                    wbIcon: Icons.phone_forwarded,
                    wbIconSize40: 40,
                    wbText: "Kontakt anrufen",
                    wbFontSize24: 24,
                    wbWidth276: 276,
                    wbHeight90: 90,
                    wbHeightAssetImage90: 90,
                    wbImageAssetImage: const AssetImage(
                      "assets/iconbuttons/icon_button_kontakte.png",
                    ),
                    wbImageButtonRadius12: 12,
                    wbOnTapTextButton: () {
                      log("0065_communication_menu"); // nur das Smartphone starten:
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ContactScreen(),
                      //   ),
                      // );
                    },
                    wbOnTapImageButton: () {
                      log("0074_communication_menu"); // erst Kontakt auswählen, dann anrufen:
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ContactScreen(),
                      //   ),
                      // );
                    },
                  ),
                  /*--------------------------------- *** ---*/
                  // WbButtonUniversal2(
                  //   wbColor: wbColorButtonDarkRed,
                  //   wbIcon: Icons.phone_forwarded,
                  //   wbIconSize40: 40,
                  //   wbText: "Einen Telefonanruf starten",
                  //   wbFontSize24: 24,
                  //   wbWidth155: 398,
                  //   wbHeight60: 90,
                  //   wbOnTap: () {
                  //     log("0059_communication_menu");
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const ContactScreen(),
                  //       ),
                  //     );
                  //   },
                  // ),
                  /*--------------------------------- *** ---*/
                  wbSizedBoxHeight8,
                  /*--------------------------------- *** ---*/
                  const Divider(
                      thickness: 3, height: 32, color: wbColorLogoBlue),
                  /*--------------------------------- WhatsApp ---*/
                  WbButtonsUniWithImageButton(
                    wbColor: wbColorButtonGreen,
                    wbIcon: Icons.phonelink_ring_outlined,
                    wbIconSize40: 40,
                    wbText: "WhatsApp versenden",
                    wbFontSize24: 24,
                    wbWidth276: 276,
                    wbHeight90: 90,
                    wbHeightAssetImage90: 90,
                    wbImageAssetImage: const AssetImage(
                      "assets/icon_button_whatsapp.png",
                    ),
                    wbImageButtonRadius12: 12,
                    wbOnTapTextButton: () {
                      log("0101_communication_menu");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ContactScreen(),
                      //   ),
                      // );
                    },
                    wbOnTapImageButton: () {
                      log("0110_communication_menu");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ContactScreen(),
                      //   ),
                      // );
                    },
                  ),
                  /*--------------------------------- *** ---*/
                  wbSizedBoxHeight8,
                  /*--------------------------------- *** ---*/
                  const Divider(
                      thickness: 3, height: 32, color: wbColorLogoBlue),
                  /*--------------------------------- E-Mail senden ---*/

                  WbButtonsUniWithImageButton(
                    wbColor: wbColorButtonBlue,
                    wbIcon: Icons.forward_to_inbox_outlined,
                    wbIconSize40: 40,
                    wbText: "E-Mail versenden",
                    wbFontSize24: 24,
                    wbWidth276: 276,
                    wbHeight90: 90,
                    wbHeightAssetImage90: 90,
                    wbImageAssetImage: const AssetImage(
                      "assets/iconbuttons/icon_button_email.png",
                    ),
                    wbImageButtonRadius12: 12,
                    wbOnTapTextButton: () {
                      log("0161_communication_menu");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EMailScreen(),
                        ),
                      );
                    },
                    wbOnTapImageButton: () {
                      log("0170_communication_menu");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EMailScreen(),
                        ),
                      );
                    },
                  ),
                  /*--------------------------------- *** ---*/
                  wbSizedBoxHeight8,
                  /*--------------------------------- *** ---*/
                  // const Divider(
                  //     thickness: 3, height: 32, color: wbColorLogoBlue),

                  // WbButtonUniversal2(
                  //   wbColor: wbColorButtonBlue,
                  //   wbIcon: Icons.forward_to_inbox_outlined,
                  //   wbIconSize40: 40,
                  //   wbText: "Eine E-Mail versenden",
                  //   wbFontSize24: 24,
                  //   wbWidth155: 398,
                  //   wbHeight60: 90,
                  //   wbOnTap: () {
                  //     log("communication_menu.dart - 0110");
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const ContactScreen(),
                  //       ),
                  //     );
                  //   },
                  // ),

                  /*--------------------------------- *** ---*/
                  wbSizedBoxHeight8,
                  /*--------------------------------- *** ---*/
                  const Divider(
                      thickness: 3, height: 32, color: wbColorLogoBlue),
                  /*--------------------------------- WbButtonUniversal2 - Neue Funktionen? ---*/
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
                  /*--------------------------------- *** ---*/
                  const SizedBox(height: 8),
                  /*--------------------------------- *** ---*/
                ],
              ),
            ),
            /*--------------------------------- MiniFooter ---*/
            const Divider(thickness: 3, height: 16, color: wbColorLogoBlue),
            const Column(
              children: [
                Text("WorkBuddy • save time and money • Version 0.001"),
              ],
            ),
            const Divider(thickness: 3, height: 16, color: wbColorLogoBlue),
            /*--------------------------------- MiniFooter ENDE ---*/
          ],
        ),
      ),
      //   ),
    );
  }
}
