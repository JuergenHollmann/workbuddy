import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_dropdownmenu.dart';
import 'package:workbuddy/config/wb_textfield_quantity.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/config/wb_textfield_currency.dart';
import 'package:workbuddy/config/wb_textfield_notice.dart';
import 'package:workbuddy/main.dart';
import 'package:workbuddy/shared/widgets/wb_text_fixed_not_writable.dart';

class ExpenseWidget extends StatefulWidget {
  const ExpenseWidget({super.key});

  @override
  State<ExpenseWidget> createState() => _ExpenseWidgetState();
}

class _ExpenseWidgetState extends State<ExpenseWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // ------ Wo wurde eingekauft? ------
        WBDropdownMenu(
          headlineText: "Wo wurde eingekauft?",
          hintText: "Welches Geachäft oder Lieferant?",
        ),

        wbSizedBoxHeight16,

        // ------ Was wurde eingekauft? ------
        WBDropdownMenu(
          headlineText: "Was wurde eingekauft?",
          hintText: "Welches Produkt?",
        ),

        wbSizedBoxHeight16,

        Row(
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
              child: WbTextFixedNotWritable(
                headlineText: "MwSt. berechnet:",
                hintText: "********** €",
                wbTextFieldWidth: 200,
              ),
            ),

            wbSizedBoxWidth16,

            // ------ Endpreis € ------
            Expanded(
              child: WBTextFieldCurrency(
                headlineText: "Endpreis in €",
                hintText: "Endpreis in € eintragen!",
              ),
            ),
          ],
        ),

        wbSizedBoxHeight16,

        // ------ Warengruppe ------
        WBDropdownMenu(
          headlineText: "Warengruppe",
          hintText: "Bitte die Warengruppe zuordnen",
        ),

        wbSizedBoxHeight16,

        // ------ Wer hat eingekauft? ------
        WBDropdownMenu(
          headlineText: "Wer hat eingekauft?",
          hintText: "Bitte Einkäufer*in zuordnen",
        ),

        wbSizedBoxHeight16,

        // ------ Notizen ------
        WBTextfieldNotice(
          headlineText: "Notizen zum Einkauf",
          hintText: "- Notizen zum Einkauf HIER eingeben -",
        ),

        Divider(thickness: 3, height: 32, color: wbLogoBlue),

        // Button aus Vorlage verwenden:
        // solange die Pflichtfelder nicht ausgefüllt sind, soll der Button rot sein und beim Anklicken einen Alert ausgeben, sonst Button grün und Daten speichern + Dialog-Bestätigung.
        WBRedButton(), // WBGreenIncomeButton(),
      ],
    );
  }
}
