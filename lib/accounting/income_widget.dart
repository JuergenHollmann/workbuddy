import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_green.dart';
import 'package:workbuddy/config/wb_dropdownmenu.dart';
import 'package:workbuddy/config/wb_textfield_notice.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/config/wb_textfield_currency.dart';
import 'package:workbuddy/config/wb_textfield_quantity.dart';

class IncomeWidget extends StatefulWidget {
  const IncomeWidget({super.key});

  @override
  State<IncomeWidget> createState() => _IncomeWidgetState();
}

class _IncomeWidgetState extends State<IncomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
// // ---------- entweder einen Code erstellen, der die Schrift und die Farbe der AppBar ändert, oder die Position verschieben ----------
//         AppBar(
//           title: const Text(
//             'Einnahme erfassen',
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w900,
//               color: Colors.white,
//             ),
//           ),
//           backgroundColor: Colors.green,
//           foregroundColor: Colors.white,
//           //toolbarHeight: 60,
//         ),

        // ------ Wem wurde etwas verkauft (Kunde)? ------
        const WBDropdownMenu(
          headlineText: "Wem wurde etwas verkauft?",
          hintText: "Welchem Kunden?",
        ),

        wbNormSpaceBetweenTextFields,

        // ------ Was wurde verkauft? ------
        const WBDropdownMenu(
          headlineText: "Was wurde verkauft?",
          hintText: "Welches Produkt oder Dienstleistung?",
        ),

        wbNormSpaceBetweenTextFields,

        const Row(
          children: [
            Expanded(
              // ------ Anzahl ------
              child: WBTextfieldQuantity(
                headlineText: "Anzahl",
                hintText: "Anzahl",
              ),
            ),
            wbNormSpaceBetweenExpanded,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ------ Einheit ------
                  WBDropdownMenu(
                    headlineText: "Einheit(en)",
                    hintText: "? ? ? ? ? ?",
                  ),
                ],
              ),
            ),
            wbNormSpaceBetweenExpanded,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ------ MwSt. % ------
                  WBDropdownMenu(
                    headlineText: "MwSt. %",
                    hintText: "? ? ? ? ? ?",
                  ),
                ],
              ),
            ),
          ],
        ),

        wbNormSpaceBetweenTextFields,

        Row(
          children: [
            // ------ MwSt berechnet: ------
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      textAlign: TextAlign.right,
                      "MwSt. berechnet:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: 40,
                    //margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: const Text(
                      "************* €",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            wbNormSpaceBetweenExpanded,

            // ------ Endpreis € ------
            const Expanded(
              child: WBTextFieldCurrency(
                headlineText: "Endpreis in €",
                hintText: "Endpreis in € eintragen!",
              ),
            ),
          ],
        ),

        wbNormSpaceBetweenTextFields,

        // ------ Warengruppe ------
        const WBDropdownMenu(
          headlineText: "Warengruppe",
          hintText: "Bitte die Warengruppe zuordnen",
        ),

        wbNormSpaceBetweenTextFields,

        // ------ Wer hat verkauft? ------
        const WBDropdownMenu(
          headlineText: "Wer hat den Verkauf gemacht?",
          hintText: "Bitte Verkäufer*in zuordnen",
        ),

        wbNormSpaceBetweenTextFields,

        // ------ Notizen ------
        const WBTextfieldNotice(
          headlineText: "Notizen zum Verkauf",
          hintText: "- Notizen zum Verkauf HIER eingeben -",
        ),

        const Divider(thickness: 3, height: 32, color: wbLogoBlue),

        // Button aus Vorlage verwenden:
        // solange die Pflichtfelder nicht ausgefüllt sind, soll der Button rot sein und beim Anklicken einen Alert ausgeben, sonst Button grün und Daten speichern + Dialog-Bestätigung.
        const WBGreenIncomeButton(), // WBGreenIncomeButton(),
      ],
    );
  }
}
