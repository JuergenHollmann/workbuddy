import 'dart:developer';

import 'package:flutter/material.dart';

class RadioButtonAccounting extends StatefulWidget {
  const RadioButtonAccounting({super.key, required this.onChange});

  final void Function(String) onChange;

  @override
  State<RadioButtonAccounting> createState() => _RadioButtonAccountingState();
}

class _RadioButtonAccountingState extends State<RadioButtonAccounting> {
  String groupValue = "Ausgabe";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 398,
      height: 60,
      //color: Colors.green,
      decoration: BoxDecoration(
        color: groupValue == "Einnahme"
            ? Colors.green.shade100
            : Colors.red.shade100,
        border: Border.all(color: Colors.grey, width: 5),
        borderRadius: BorderRadius.circular(12),
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
      ),
    );
  }
}
