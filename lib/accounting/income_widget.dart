import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_textfield_notice.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/config/wb_textfield_currency.dart';
import 'package:workbuddy/config/wb_textfield_quantity.dart';
import 'package:workbuddy/main.dart';

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
        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Wem wurde etwas verkauft (Kunde)?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        Container(
          height: 40,
          //margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              //value: _selectedValue,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              items: const [
                DropdownMenuItem(value: "Wo_01", child: Text("OBI")),
                DropdownMenuItem(value: "Wo_02", child: Text("TOOM")),
                DropdownMenuItem(value: "Wo_03", child: Text("Kaufland")),
                DropdownMenuItem(value: "Wo_04", child: Text("ACTION")),
                DropdownMenuItem(value: "Wo_05", child: Text("WOOLWORTH")),
                DropdownMenuItem(value: "Wo_06", child: Text("Klaus Mayer")),
                DropdownMenuItem(value: "Wo_07", child: Text("Paula Müller")),
                DropdownMenuItem(value: "Wo_08", child: Text("Josef Schuster")),
                DropdownMenuItem(value: "Wo_09", child: Text("Gerda Gärtner")),
                DropdownMenuItem(value: "Wo_10", child: Text("Peter Petersen")),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  // _selectedValue = newValue!;
                });
              },
            ),
          ),
        ),

        // ------ Was wurde verkauft? ------
        wbNormSpaceBetweenTextFields,
        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Was wurde verkauft?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              //value: _selectedValue,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              items: const [
                DropdownMenuItem(value: "Was_0006", child: Text("Dachlatten")),
                DropdownMenuItem(
                    value: "Was_0007", child: Text("Spax-Schrauben")),
                DropdownMenuItem(value: "Was_0008", child: Text("Wurst")),
                DropdownMenuItem(value: "Was_0009", child: Text("Käse")),
                DropdownMenuItem(value: "Was_0010", child: Text("Brot")),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  //_selectedValue = newValue!;
                });
              },
            ),
          ),
        ),

        wbNormSpaceBetweenTextFields,

        Row(
          children: [
            const Expanded(
              // ------ Anzahl ------
              child: WBTextfieldQuantity(
                headlineText: "Anzahl",
                hintText: "Anzahl",
              ),
            ),

            wbNormSpaceBetweenExpanded,

            // ------ Einheit ------
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      textAlign: TextAlign.right,
                      "Einheit",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    //margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        //value: _selectedValue,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        items: const [
                          DropdownMenuItem(
                              value: "Einheit_0011", child: Text("Stk")),
                          DropdownMenuItem(
                              value: "Einheit_0012", child: Text("kg")),
                          DropdownMenuItem(
                              value: "Einheit_0013", child: Text("gr")),
                          DropdownMenuItem(
                              value: "Einheit_0014", child: Text("Pkg")),
                          DropdownMenuItem(
                              value: "Einheit_0015", child: Text("ltr")),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            //_selectedValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            wbNormSpaceBetweenExpanded,

            // ------ MwSt. % ------
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      textAlign: TextAlign.right,
                      "MwSt. %",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // children: [
                  Container(
                    height: 40,
                    //margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        //value: _selectedValue,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        items: const [
                          DropdownMenuItem(value: "16", child: Text("0")),
                          DropdownMenuItem(value: "17", child: Text("7")),
                          DropdownMenuItem(value: "18", child: Text("19")),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            // ignore: unused_label
                            //_selectedValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        wbNormSpaceBetweenTextFields,

        Row(
          children: [
            // ------ berechnete MwSt € ------
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
                      // textAlignVertical: TextAlignVertical.center,
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
        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Warengruppe",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        Container(
          height: 40,
          //margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              //value: _selectedValue,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              items: const [
                DropdownMenuItem(value: "WG_0006", child: Text("Werkzeuge")),
                DropdownMenuItem(value: "WG_0007", child: Text("Ersatzteile")),
                DropdownMenuItem(value: "WG_0008", child: Text("Büroartikel")),
                DropdownMenuItem(value: "WG_0009", child: Text("Zubehör")),
                DropdownMenuItem(value: "WG_0010", child: Text("Kabel")),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  //_selectedValue = newValue!;
                });
              },
            ),
          ),
        ),
        wbNormSpaceBetweenTextFields,
        // ------ Wer hat verkauft? ------
        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Wer hat verkauft?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              //value: _selectedValue,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              items: const [
                DropdownMenuItem(value: "EK_0006", child: Text("Klaus")),
                DropdownMenuItem(value: "EK_0007", child: Text("Paul")),
                DropdownMenuItem(value: "EK_0008", child: Text("Carla")),
                DropdownMenuItem(value: "EK_0009", child: Text("Paula")),
                DropdownMenuItem(value: "EK_0010", child: Text("Schorsch")),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  //_selectedValue = newValue!;
                });
              },
            ),
          ),
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
