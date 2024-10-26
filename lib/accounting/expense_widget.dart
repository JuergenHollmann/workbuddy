import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_dropdownmenu.dart';
import 'package:workbuddy/config/wb_textfield_quantity.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/config/wb_textfield_currency.dart';
import 'package:workbuddy/config/wb_textfield_notice.dart';
import 'package:workbuddy/main.dart';

class ExpenseWidget extends StatefulWidget {
  const ExpenseWidget({super.key});

  @override
  State<ExpenseWidget> createState() => _ExpenseWidgetState();
}

class _ExpenseWidgetState extends State<ExpenseWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ------ Wo wurde eingekauft? ------
        const WBDropdownMenu(
          headlineText: "Wo wurde eingekauft?",
          hintText: "Welches Geachäft oder Lieferant?",
        ),

        wbSizedBoxHeight16,

        // ------ Was wurde eingekauft? ------
        const WBDropdownMenu(
          headlineText: "Was wurde eingekauft?",
          hintText: "Welches Produkt?",
        ),

        wbSizedBoxHeight16,

        const Row(
          children: [
            Expanded(
              // ------ Anzahl ------
              child: WBTextfieldQuantity(
                headlineText: "Anzahl",
                hintText: "Anzahl",
              ),
            ),
            wbSizedBoxWidth16,
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
            wbSizedBoxWidth16,
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

        wbSizedBoxHeight16,

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

            wbSizedBoxWidth16,

            // ------ Endpreis € ------
            const Expanded(
              child: WBTextFieldCurrency(
                headlineText: "Endpreis in €",
                hintText: "Endpreis in € eintragen!",
              ),
            ),
          ],
        ),

        wbSizedBoxHeight16,

        // ------ Warengruppe ------
        const WBDropdownMenu(
          headlineText: "Warengruppe",
          hintText: "Bitte die Warengruppe zuordnen",
        ),

        wbSizedBoxHeight16,

        // ------ Wer hat eingekauft? ------
        const WBDropdownMenu(
          headlineText: "Wer hat eingekauft?",
          hintText: "Bitte Einkäufer*in zuordnen",
        ),

        wbSizedBoxHeight16,

        // ------ Notizen ------
        const WBTextfieldNotice(
          headlineText: "Notizen zum Einkauf",
          hintText: "- Notizen zum Einkauf HIER eingeben -",
        ),

        const Divider(thickness: 3, height: 32, color: wbLogoBlue),

        // Button aus Vorlage verwenden:
        // solange die Pflichtfelder nicht ausgefüllt sind, soll der Button rot sein und beim Anklicken einen Alert ausgeben, sonst Button grün und Daten speichern + Dialog-Bestätigung.
        const WBRedButton(), // WBGreenIncomeButton(),
      ],
    );
  }
}
