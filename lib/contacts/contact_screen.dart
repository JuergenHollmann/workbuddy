import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/class/selection_screen.dart';
import 'package:workbuddy/config/wb_button_universal.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/shared/widgets/wb_text_fixed_not_writable.dart';
import 'package:workbuddy/shared/widgets/wb_textfield_standard_entry.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wbColorLightYellowGreen, // sehr helles Gelbgrün
      appBar: AppBar(
        title: const Text(
          'Kontakt bearbeiten',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Divider(thickness: 3, color: wbLogoBlue),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          // Quadrat mit blauem Hintergrund und Schatten
                          decoration: ShapeDecoration(
                            shadows: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                                spreadRadius: 0,
                              )
                            ],
                            color: wbButtonBlue,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 2,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/dummy_person_portrait.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Name des Kunden",
                        ),
                      ],
                    ),

                    const SizedBox(width: 40), // Zwischenabstand bei Expanded

                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 8,
                                offset: Offset(3, 3),
                                spreadRadius: 0,
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Colors.white,
                            // -----------------------------
                            // Außenlinie mit Farbverlauf:
                            // gradient: LinearGradient(
                            //   colors: [
                            //     Colors.red,
                            //     Colors.yellow,
                            //   ],
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.bottomRight,
                            // ),
                            // -----------------------------
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(2.5), // stroke
                            child: CircleAvatar(
                              backgroundColor: wbButtonBlue,
                              backgroundImage:
                                  // AssetImage("assets/dummy_person_portrait.png",),
                                  // AssetImage("assets/dummy_no_logo.png",),
                                  // AssetImage("assets/workbuddy_logo.png",),
                                  AssetImage(
                                "assets/workbuddy_logo_neon_green_512x512.png",
                              ),
                              // ------------------------------------------
                              // Bild aus dem Internet:
                              // NetworkImage('https://picsum.photos/200'),
                              // ------------------------------------------
                              radius: 80,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Name der Firma",
                        ), // wenn Privatperson, dann DummyImage + Text "Privatperson"
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 3, color: wbLogoBlue),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //wbSizedBoxHeight16,
                    // ------------------------------------------------------- Anrede ---
                    const DropdownMenu(
                      width: 200,
                      label: Text(
                        "Anrede",
                      ),
                      menuHeight: 600, // ausklappbare Maximalhöhe
                      hintText: "auswählen", // funzt nicht?
                      // helperText: "Bitte auswählen",
                      inputDecorationTheme: InputDecorationTheme(
                        fillColor: Colors.green, // funzt nicht?
                      ),
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      dropdownMenuEntries: <DropdownMenuEntry<int>>[
                        DropdownMenuEntry(value: 1, label: "Herr"),
                        DropdownMenuEntry(value: 2, label: "Frau"),
                        DropdownMenuEntry(value: 3, label: "Divers"),
                        DropdownMenuEntry(value: 4, label: "Herr Dr."),
                        DropdownMenuEntry(value: 5, label: "Frau Dr."),
                        DropdownMenuEntry(value: 6, label: "Dr."),
                      ],
                    ),
                    // ------------------------------------------------------- Vorname ---
                    wbSizedBoxHeight16,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Vorname',
                      hintText: 'Bitte den Vornamen eintragen',
                      wbTextFieldWidth: 398,
                    ),
                    // ------------------------------------------------------- Nachname ---
                    wbSizedBoxHeight16,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Nachname',
                      hintText: 'Bitte den Nachnamen eintragen',
                      wbTextFieldWidth: 398,
                    ),
                    // ------------------------------------------------------- Geburtstag ---
                    wbSizedBoxHeight16,
                    const Row(
                      children: [
                        WbTextfieldStandardEntry(
                          headlineText: 'Geburtstag',
                          hintText: 'Geburtstag',
                          wbTextFieldWidth: 165,
                        ),

                        wbSizedBoxWidth16,
                        // ------------------------------------------------------- Alter ---
                        WbTextFixedNotWritable(
                          headlineText: "Alter:",
                          hintText: "*****",
                          wbTextFieldWidth: 55,
                        ),

                        //                       Text(
                        // "************* €",
                        // textAlign: TextAlign.right,
                        // style: TextStyle(
                        //   fontSize: 24,
                        // ),
                        // WbTextfieldStandardEntry(
                        //   headlineText: 'Alter',
                        //   hintText: '? ?',
                        //   wbTextFieldWidth: 55,
                        // ),
                        wbSizedBoxHeight16,
                        // wbSizedBoxHeight16,
                        // wbSizedBoxHeight16,
                        Text(
                          "... wird berechnet",
                        ),
                      ],
                    ),
                    // ------------------------------------------------------- Straße + Nummer ---
                    wbSizedBoxHeight16,
                    const Divider(thickness: 3, color: wbLogoBlue),
                    wbSizedBoxHeight8,

                    const WbTextfieldStandardEntry(
                      headlineText: 'Straße + Hausnummer',
                      hintText: 'Bitte Straße mit Hausnummer eintragen',
                      wbTextFieldWidth: 398,
                    ),
                    // ------------------------------------------------------- Zusatzinformation ---
                    wbSizedBoxHeight16,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Zusatzinformation zur Adresse',
                      hintText: 'z.B.: c/o-Adresse? - Hinterhaus? - EG/OG?',
                      wbTextFieldWidth: 398,
                    ),
                    // ------------------------------------------------------- PLZ ---
                    wbSizedBoxHeight16,
                    const Row(
                      children: [
                        WbTextfieldStandardEntry(
                          headlineText: 'PLZ',
                          hintText: 'PLZ',
                          wbTextFieldWidth: 102,
                        ),
                        // ------------------------------------------------------- Ort ---
                        wbSizedBoxWidth16,
                        WbTextfieldStandardEntry(
                          headlineText: 'Ort',
                          hintText: 'Bitte den Wohnort eintragen',
                          wbTextFieldWidth: 280,
                        ),
                      ],
                    ),

                    // ------------------------------------------------------- Button Kontakt speichern---
                    wbSizedBoxHeight16,
                    const Divider(thickness: 3, color: wbLogoBlue),
                    wbSizedBoxHeight8,

                    GestureDetector(
                        onTap: () {
                          log("Auf - AccountingMenu - Eine Ausgabe buchen - angeklickt");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SelectionPage(),
                            ),
                          );
                        },
                        child: WbButtonUniversal(
                          wbColor: wbColorButtonGreen,
                          icon: Icons.save_rounded,
                          wbButtonUniversalText: "Kontakt speichern",
                          onButtonTap: () {},
                          width: 398,
                        )
                        // child: WbButtonUniversal(
                        //     wbColor: wbColorButtonGreen,
                        //     icon: Icons.save_rounded,
                        //     wbButtonUniversalText: "Kontakt speichern",
                        //     onButtonTap: () {}),
                        ),
                    wbSizedBoxHeight16,
                    const Divider(thickness: 3, color: wbLogoBlue),
                    wbSizedBoxHeight16,

                    // ------------------------------------------------------- ENDE ---
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
