import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workbuddy/config/wb_colors.dart';
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
        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Wo wurde eingekauft?",
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
                DropdownMenuItem(value: "Wo_01", child: Text("OgBI")),
                DropdownMenuItem(value: "Wo_02", child: Text("TOOM")),
                DropdownMenuItem(value: "Wo_03", child: Text("Kaufland")),
                DropdownMenuItem(value: "Wo_04", child: Text("ACTION")),
                DropdownMenuItem(value: "Wo_05", child: Text("WOOLWORTH")),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  // _selectedValue = newValue!;
                });
              },
            ),
          ),
        ),

        // ------ Was wurde eingekauft? ------
        const SizedBox(height: 16),
        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Was wurde eingekauft?",
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

        const SizedBox(height: 16),

        Row(
          children: [
            // ------ Anzahl ------
            Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      //textAlign: TextAlign.right,
                      "Anzahl",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        // height: 8,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    //margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: TextField(
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        fontSize: 24,
                        // height: 0.01, // 0.01,
                        // overflow: TextOverflow.visible,
                      ),
                      // es dürfen nur Ziffern (auch dezimale) eingetragen werden = Keyboard nur mit Ziffern und decimal:
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      // der Input muss mit Regex überprüft werden:
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                        //FilteringTextInputFormatter.digitsOnly
                      ],

                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 14),
                        hintText: 'Anzahl',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: Colors.red,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Expanded-Zwischenraum:
            const SizedBox(width: 16),

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

            // Expanded-Zwischenraum:
            const SizedBox(width: 16),

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

        const SizedBox(height: 16),

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

            // Expanded-Zwischenraum:
            const SizedBox(width: 16),

            // ------ Endpreis € ------
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      textAlign: TextAlign.right,
                      "Endpreis in €",
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
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      textAlign: TextAlign.right,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),

                      // es dürfen nur Ziffern (auch dezimale) eingetragen werden = Keyboard nur mit Ziffern und decimal:
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      // der Input muss mit Regex überprüft werden:
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                        //FilteringTextInputFormatter.digitsOnly
                      ],

                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 14),
                        hintText: 'Endpreis eingeben!',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: Colors.red,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // ------ Warengruppe ------
        const SizedBox(height: 16),

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

        // ------ Wer hat eingekauft? ------
        const SizedBox(height: 16),

        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Wer hat eingekauft?",
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

        // ------ Notizen ------
        const SizedBox(height: 16),

        const SizedBox(
          width: 400,
          child: Text(
            textAlign: TextAlign.left,
            "Notizen zum Einkauf",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        Container(
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),

          child: TextFormField(
            //expands: true,
            // child: const TextField(
            maxLines: 4,
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.top,
            style: const TextStyle(
              fontSize: 18,
              // height: 0.01, // 0.01,
              // overflow: TextOverflow.visible,
            ),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 0),
              hintText: '- Notizen hier eingeben -',
              hintStyle: TextStyle(fontSize: 18),
              border: InputBorder.none,
            ),
          ),

          // child: DropdownButtonHideUnderline(
          //   child: DropdownButton<String>(
          //     isExpanded: true,
          //     //value: _selectedValue,
          //     style: const TextStyle(
          //       fontSize: 24,
          //       color: Colors.black,
          //     ),
          //     items: const [
          //       DropdownMenuItem(value: "EK_0006", child: Text("Klaus")),
          //       DropdownMenuItem(value: "EK_0007", child: Text("Paul")),
          //       DropdownMenuItem(value: "EK_0008", child: Text("Carla")),
          //       DropdownMenuItem(value: "EK_0009", child: Text("Paula")),
          //       DropdownMenuItem(
          //           value: "EK_0010", child: Text("Schorsch")),
          //     ],
          //     onChanged: (String? newValue) {
          //       setState(() {
          //         //_selectedValue = newValue!;
          //       });
          //     },
          //   ),
          // ),
        ),

        // // ------ Notizen ------
        // Expanded(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Padding(
        //         padding: EdgeInsets.only(right: 8.0),
        //         child: Text(
        //           textAlign: TextAlign.right,
        //           "Notizen:",
        //           style: TextStyle(
        //             fontSize: 18,
        //             fontWeight: FontWeight.bold,
        //             color: Colors.black,
        //           ),
        //         ),
        //       ),

        //       Container(
        //         alignment: Alignment.topLeft,
        //         height: 120,
        //         //margin: const EdgeInsets.only(top: 8),
        //         padding: const EdgeInsets.symmetric(horizontal: 8),

        //         decoration: BoxDecoration(
        //           color: Colors.grey[300],
        //           border: Border.all(color: Colors.grey),
        //           borderRadius: BorderRadius.circular(12),
        //         ),

        //         child: const Text(
        //           "Notizen",
        //           textAlign: TextAlign.right,
        //           // textAlignVertical: TextAlignVertical.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        // ------ ENDE ------
        //    ],
        //

        // -- Divider ---------------------------------------------
        const Divider(thickness: 3, height: 32, color: wbLogoBlue),

        //TextField(Text("so ne Grütze!")),

        // Button aus Vorlage verwenden:
        // solange die Pflichtfelder nicht ausgefüllt sind, soll der Button rot sein und beim Anklicken einen Alert ausgeben, sonst Button grün und Daten speichern + Dialog-Bestätigung.
        const WBRedButton(), // WBGreenIncomeButton(),
      ],
    );
  }
}
