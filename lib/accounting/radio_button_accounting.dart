import 'dart:developer';

import 'package:flutter/material.dart';

class RadioButtonAccounting extends StatefulWidget {
  const RadioButtonAccounting(
      {super.key, required this.onChange, required this.startGroupValue});

  final void Function(String) onChange;
  final String startGroupValue;

  @override
  State<RadioButtonAccounting> createState() => _RadioButtonAccountingState();
}

class _RadioButtonAccountingState extends State<RadioButtonAccounting> {
  // mit "late" wird eine Variable initialisiert ohne ihr sofort einen Wert zuzuweisen:
  late String groupValue;
  
  // mit "initState" wird der State aufgerufen wenn ein StatefulWidget erstellt wird:
  @override
  void initState() {
    super.initState();
    groupValue = widget.startGroupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 398,
          height: 60,
          decoration: BoxDecoration(
            color: groupValue == "Einnahme"
                ? Colors.green.shade200
                : Colors.red.shade200,
            border: Border.all(color: Colors.grey, width: 5),
            borderRadius: BorderRadius.circular(12),
            // boxShadow:

            //  Colors.black, blurRadius:8,

            // BoxShadow(
            //               color: Colors.black,
            //               blurRadius: 8,
            //               offset: Offset(4, 4),
            //               spreadRadius: 0,
            //             ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Expanded(
              child: Row(
                children: [
                  Radio(
                      value: "Einnahme",
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                          widget.onChange(value);

                          // groupValue == "Einnahme"
                          //     ? const RadioButtonInOutGreen()
                          //     : const RadioButtonInOutRed();
                          // const RadioButtonInOutGreen();
                          // const WBGreenIncomeButton();
                          //const RadioButtonInOutGreen();

                          log("Einnahme wurde angeklickt");
                        });
                      }),
                  // Visibility(
                  //   visible: groupValue == "Einnhame",
                  //   child: const WBGreenButton(),
                  // ),
                  const Text(
                    "Einnahme",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Radio(
                      value: "Ausgabe",
                      groupValue: groupValue,
                      //key: Key(AccountingScreen._buttonExpenseKey),
                      //key: AccountingScreen. _buttonExpenseKey,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                          widget.onChange(value);

                          // groupValue == "Ausgabe"
                          //     ? const RadioButtonInOutRed()
                          //     : const RadioButtonInOutGreen();
                          //const RadioButtonInOutRed();
                          //const WBRedButton();
                          //const RadioButtonInOutRed();

                          log("Ausgabe wurde angeklickt");
                        });
                      }),
                  // Visibility(
                  //   visible: groupValue == "Ausgabe",
                  //   child: const WBRedButton(),
                  // ),
                  const Text(
                    "Ausgabe",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // groupValue == "Einnahme"
                  //     ? const RadioButtonInOutGreen()
                  //     : const RadioButtonInOutRed(),
                ],
              ),
            ),

            // BoxShadow(
            //               color: Colors.black,
            //               blurRadius: 8,
            //               offset: Offset(4, 4),
            //               spreadRadius: 0,
            //             ),
          ),
        ),
      ],
    );
  }
}
