import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_universal.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/config/wb_textfield_notice.dart';
import 'package:workbuddy/screens/selection_screen.dart';
import 'package:workbuddy/shared/widgets/wb_dialog_alert_update_coming_soon.dart';
import 'package:workbuddy/shared/widgets/wb_divider_with_small_text_center.dart';
import 'package:workbuddy/shared/widgets/wb_text_fixed_not_writable.dart';
import 'package:workbuddy/shared/widgets/wb_textfield_standard_entry.dart';
import 'package:workbuddy/wb_companies/company_radiobutton_1.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wbColorBackgroundBlue,
      appBar: AppBar(
        title: const Text(
          'Firma bearbeiten',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbColorBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Divider(thickness: 3, color: wbColorLogoBlue),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /* -------------------------------------- Firmenlogo --- */
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
                              backgroundColor: wbColorButtonBlue,
                              backgroundImage:
                                  // AssetImage(
                                  //   "assets/company_logos/obi.png",
                                  // ),

                                  // AssetImage("assets/dummy_person_portrait.png",),
                                  // AssetImage("assets/dummy_no_logo.png",),
                                  // AssetImage("assets/workbuddy_logo.png",),
                                  //   AssetImage(
                                  // "assets/workbuddy_logo_neon_green_512x512.png",
                                  //   ),
                                  AssetImage(
                                "assets/company_logos/enpower_expert_logo_4_x_4.png",
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

                    /* -------------------------------------- Abstand --- */
                    const SizedBox(width: 30), // Zwischenabstand bei Expanded
                    /* -------------------------------------- Ansprechpartner --- */
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
                            color: wbColorButtonBlue,
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
                          "Ansprechpartner",
                        ),
                      ],
                    ),
                    /* -------------------------------------- xxx --- */
                  ],
                ),
              ),
              /* ----------------------------------------------------- Divider ---*/
              const Divider(thickness: 3, color: wbColorLogoBlue),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Divider(thickness: 3, color: wbColorLogoBlue),
                    /* ----------------------------------------------------- Lieferant/Kunde ---*/
                    const CompanyRadioButton1(),

                    /* ----------------------------------------------------- Divider ---*/
                    const Divider(thickness: 3, color: wbColorLogoBlue),

                    /* ----------------------------------------------------- Firmenbezeichnung ---*/
                    wbSizedBoxHeight8,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Firmenbezeichnung',
                      hintText: 'Bitte die Firmenbezeichnung eintragen',
                      wbTextFieldWidth: 398,
                    ),

                    /* ----------------------------------------------------- Branchenzuordnung ---*/
                    wbSizedBoxHeight16,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Branchenzuordnung',
                      hintText: 'Welcher Branche zugeordnet?',
                      wbTextFieldWidth: 398,
                    ),

                    /*-------------------------------------- Notizen zu Warengruppen ---*/
                    wbSizedBoxHeight16,
                    const WBTextfieldNotice(
                        headlineText: "Notizen zu Warengruppen",
                        hintText:
                            "Welche Waren sind für die Suchfunktion in der App relevant?\n\nBeispiele: Schrauben, Werkzeug, etc."),

                    // ----------------------------------------------------- Divider mit Text ---
                    wbSizedBoxHeight16,
                   
                    // fixme: Expanded beheben - der Fehler ist seither nicht mehr gemeldet worden.
                    // 😉 Das war hier:
                    // const SizedBox(width: 30), // Zwischenabstand bei Expanded (war vorher 40)

                    const WbDividerWithSmallTextCenter(
                      wbDividerText: "Adresse",
                    ),
                    wbSizedBoxHeight8,

                    /*----------------------------------------------------- Straße + Nummer ---*/
                    const WbTextfieldStandardEntry(
                      headlineText: 'Straße + Hausnummer',
                      hintText: 'Bitte Straße mit Hausnummer eintragen',
                      wbTextFieldWidth: 398,
                    ),

                    // ----------------------------------------------------- Zusatzinformation ---
                    wbSizedBoxHeight16,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Zusatzinformation zur Adresse',
                      hintText: 'z.B.: c/o-Adresse? - Hinterhaus? - EG/OG?',
                      wbTextFieldWidth: 398,
                    ),

                    // ----------------------------------------------------- PLZ ---
                    wbSizedBoxHeight16,
                    const Row(
                      children: [
                        WbTextfieldStandardEntry(
                          headlineText: 'PLZ',
                          hintText: 'PLZ',
                          wbTextFieldWidth: 102,
                        ),

                        // ----------------------------------------------------- Ort ---
                        wbSizedBoxWidth16,
                        WbTextfieldStandardEntry(
                          headlineText: 'Ort',
                          hintText: 'Bitte Firmensitz eintragen',
                          wbTextFieldWidth: 280,
                        ),
                      ],
                    ),

                    // ----------------------------------------------------- Divider mit Text ---
                    wbSizedBoxHeight16,
                    const WbDividerWithSmallTextCenter(
                      wbDividerText: "Ansprechpartner",
                    ),

                    // ----------------------------------------------------- Anrede ---
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

                    // ----------------------------------------------------- Vorname ---
                    wbSizedBoxHeight16,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Vorname',
                      hintText: 'Bitte den Vornamen eintragen',
                      wbTextFieldWidth: 398,
                    ),

                    // ----------------------------------------------------- Nachname ---
                    wbSizedBoxHeight16,
                    const WbTextfieldStandardEntry(
                      headlineText: 'Nachname',
                      hintText: 'Bitte den Nachnamen eintragen',
                      wbTextFieldWidth: 398,
                    ),

                    // ----------------------------------------------------- Geburtstag ---
                    wbSizedBoxHeight16,
                    const Row(
                      children: [
                        WbTextfieldStandardEntry(
                          headlineText: 'Geburtstag',
                          hintText: 'Geburtstag',
                          wbTextFieldWidth: 165,
                        ),

                        wbSizedBoxWidth16,

                        // ----------------------------------------------------- Alter ---
                        WbTextFixedNotWritable(
                          headlineText: "Alter:",
                          hintText: "*****",
                          wbTextFieldWidth: 55,
                        ),

                        wbSizedBoxHeight16,

                        Text(
                          "... wird berechnet",
                        ),
                      ],
                    ),

                    /*----------------------------------------------------- Notizen ---*/
                    wbSizedBoxHeight16,
                    const WBTextfieldNotice(
                        headlineText: "Notizen zum Ansprechpartner:",
                        hintText: "Beispiele: Hobbys, Lieblingswein, usw."),

                    // ----------------------------------------------------- Divider mit Text ---
                    wbSizedBoxHeight16,
                    const WbDividerWithSmallTextCenter(
                      wbDividerText: "Kommunikation",
                    ),
                    wbSizedBoxHeight8,

                    // ----------------------------------------------------- Telefon 1 ---
                    GestureDetector(
                      onTap: () {
                        log("Einen Anruf starten");
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const WbDialogAlertUpdateComingSoon(
                            headlineText: "Einen Anruf starten",
                            contentText:
                                "Willst Du jetzt die Nummer\n+49-XXX-XXXX-XXXX\nvon Klaus Müller\nin der Firma XXXXXXXXXXXX GmbH & Co. KG\nanrufen?\n\nDiese Funktion kommt bald in einem KOSTENLOSEN Update!\n\nHinweis: CS-282",
                          ),
                        );

                        // Versuche, die Anruf-Funktion auf dem Smartphone zu programmieren - todo
                        // onTap: () async {
                        //   log("Anruf starten");
                        //Uri.parse("+491789697193"); // funzt das?
                        //launchUrl("tel:+491789697193");
                        //UrlLauncher.launch('tel:+${p.phone.toString()}');
                        //final call = Uri.parse('tel:+91 9830268966');
                        // if (await canLaunchUrl(call)) {
                        //   launchUrl(call);
                        // } else {
                        //   throw 'Could not launch $call';
                        // }
                      },
                      child: const Row(
                        children: [
                          WbTextfieldStandardEntry(
                            headlineText: 'Telefon 1 - Mobil',
                            hintText: 'Bitte die Mobilnummer eintragen',
                            wbTextFieldWidth: 316,
                          ),
                          wbSizedBoxWidth16,
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: Image(
                                image: AssetImage(
                                    "assets/iconbuttons/icon_button_telefon_blau.png")),
                          )
                        ],
                      ),
                    ),

                    wbSizedBoxHeight16,

                    // ----------------------------------------------------- WhatsApp ---
                    GestureDetector(
                      onTap: () {
                        log("Eine WhatsApp-Nachricht versenden");
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const WbDialogAlertUpdateComingSoon(
                            headlineText: "Eine WhatsApp-Nachricht starten",
                            contentText:
                                "Willst Du jetzt eine WhatsApp-Nachrticht an die Nummer\n+49-XXX-XXXX-XXXX\nvon Klaus Müller versenden?\n\nDiese Funktion kommt bald in einem KOSTENLOSEN Update!\n\nHinweis: CS-330",
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          WbTextfieldStandardEntry(
                            headlineText: 'WhatsApp',
                            hintText: 'Bitte die WhatsApp-Nr. eintragen',
                            wbTextFieldWidth: 316,
                          ),
                          wbSizedBoxWidth16,
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: Image(
                                image: AssetImage(
                                    "assets/iconbuttons/icon_button_whatsapp.png")),
                          )
                        ],
                      ),
                    ),

                    wbSizedBoxHeight16,

                    // ----------------------------------------------------- Telefon 2 ---
                    GestureDetector(
                      onTap: () {
                        log("Einen Anruf starten");
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const WbDialogAlertUpdateComingSoon(
                            headlineText: "Einen Anruf starten",
                            contentText:
                                "Willst Du jetzt die Nummer\n+49-XXX-XXXX-XXXX\nvon Klaus Müller anrufen?\n\nDiese Funktion kommt bald in einem KOSTENLOSEN Update!\n\nHinweis: CS-365",
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          WbTextfieldStandardEntry(
                            headlineText: 'Telefon 2',
                            hintText: 'Bitte ggf. 2. Nummer eintragen',
                            wbTextFieldWidth: 316,
                          ),
                          wbSizedBoxWidth16,
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: Image(
                                image: AssetImage(
                                    "assets/iconbuttons/icon_button_telefon_blau.png")),
                          )
                        ],
                      ),
                    ),

                    wbSizedBoxHeight16,

                    // ----------------------------------------------------- E-Mail 1 ---
                    GestureDetector(
                      onTap: () {
                        log("E-Mail 1 versenden");
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const WbDialogAlertUpdateComingSoon(
                            headlineText: "Eine E-Mail versenden",
                            contentText:
                                "Willst Du jetzt eine E-Mail an\nKlausMueller@mueller.de\nversenden?\n\nDiese Funktion kommt bald in einem KOSTENLOSEN Update!\n\nHinweis: CS-400",
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          WbTextfieldStandardEntry(
                            headlineText: 'E-Mail 1',
                            hintText: 'Bitte die E-Mail eintragen',
                            wbTextFieldWidth: 316,
                          ),
                          wbSizedBoxWidth16,
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: Image(
                                image: AssetImage(
                                    "assets/iconbuttons/icon_button_email.png")),
                          )
                        ],
                      ),
                    ),

                    wbSizedBoxHeight16,

                    // ----------------------------------------------------- E-Mail 2 ---
                    GestureDetector(
                      onTap: () {
                        log("E-Mail 2 versenden");
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const WbDialogAlertUpdateComingSoon(
                            headlineText: "Eine E-Mail versenden",
                            contentText:
                                "Willst Du jetzt eine E-Mail an\nPaulaMueller@mueller.de\nversenden?\n\nDiese Funktion kommt bald in einem KOSTENLOSEN Update!\n\nHinweis: CS-435",
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          WbTextfieldStandardEntry(
                            headlineText: 'E-Mail 2',
                            hintText: 'Bitte ggf. die 2. E-Mail eintragen',
                            wbTextFieldWidth: 316,
                          ),
                          wbSizedBoxWidth16,
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: Image(
                                image: AssetImage(
                                    "assets/iconbuttons/icon_button_email.png")),
                          )
                        ],
                      ),
                    ),

                    //wbSizedBoxHeight8,

                    // ----------------------------------------------------- Button Kontakt speichern---
                    wbSizedBoxHeight16,
                    const Divider(thickness: 3, color: wbColorLogoBlue),
                    wbSizedBoxHeight8,

                    GestureDetector(
                      onTap: () {
                        log("Auf - CompanyScreen - Firma speichern - angeklickt");
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
                        wbButtonUniversalText: "Firma SPEICHERN",
                        onButtonTap: () {},
                        width: 398,
                      ),
                    ),
                    wbSizedBoxHeight16,
                    const Divider(thickness: 3, color: wbColorLogoBlue),
                    wbSizedBoxHeight16,

                    // ----------------------------------------------------- ENDE ---
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