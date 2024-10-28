import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(
                Icons.menu,
                size: 44,
                color: wbLogoBlue,
              ),
              onPressed: () {
                log("Der Menü-Button (auf welcome_text) wurde angeklickt");
                // const StartPageDrawer(child: Padding(padding: EdgeInsets.zero));

                Scaffold.of(context).openDrawer();
                // --- Drawer -----------------------------------------------------
                Drawer(
                  child: ListView(
                    // WICHTIG: Alle Paddings von der ListView entfernen!
                    padding: EdgeInsets.zero,
                    children: [
                      const DrawerHeader(
                        decoration: BoxDecoration(
                          color: wbColorDrawerOrangeLight,
                        ),
                        child: Text('WorkBuddy'),
                      ),
                      ListTile(
                        title: const Text('Über uns'),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: const Text('Item 2'),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),

        // Image "workbuddy_glow_logo" einbinden:
        const Padding(
          padding: EdgeInsets.fromLTRB(120, 0, 120, 20),
          child: Image(
              image:
                  AssetImage("assets/workbuddy_logo_neon_green_512x512.png")),
        ),
        const Divider(
          thickness: 4,
          color: Colors.blue,
        ),

        const Text(
          "Herzlich willkommen bei",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 0, 80, 220)),
          textAlign: TextAlign.center,
        ),
        Container(height: 8),
        // Image "workbuddy_glow_schriftzug" einbinden:
        const Image(image: AssetImage("assets/workbuddy_glow_schriftzug.png")),

        const Text(
          "\"save time and money!\"",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 0, 80, 220)),
          textAlign: TextAlign.center,
        ),
        const Divider(
          thickness: 4,
          color: Colors.blue,
        ),
        Container(height: 32),
        const Text("Bitte melde Dich an:",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 255, 0, 0)),
            textAlign: TextAlign.center),
      ],
    );
  }
}
