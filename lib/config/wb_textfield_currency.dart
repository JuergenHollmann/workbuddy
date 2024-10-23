import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WBTextFieldCurrency extends StatelessWidget {
  const WBTextFieldCurrency(
      {super.key,
      required this.headlineCurrencyField,
      required this.hintCurrencyField});

  final String headlineCurrencyField;
  final String hintCurrencyField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            headlineCurrencyField,
            textAlign: TextAlign.right,
            style: const TextStyle(
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

            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 14),
              hintText: hintCurrencyField,
              hintStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Colors.red,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
