import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double bigTextSize = 48;
const double normalTextSize = 24;
const double smallTextSize = 16;
const double normalDistance = 24;

const wbNormSpaceBetweenTextFields = SizedBox(height: 16);
const wbNormSpaceBetweenExpanded = SizedBox(width: 16);

// Padding(padding: EdgeInsets.only(right: 8.0),child: const

const wbNormTextFieldHeaderRight = Text(
  "Endpreis in €",
  textAlign: TextAlign.right,
  style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
);

var wbtest2 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: wbNormTextFieldHeaderRight,
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
);






var wbTest1 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: wbNormTextFieldHeaderRight,
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
      child: const TextField(
        textAlign: TextAlign.right,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  ],
);

// );
// Container(
//   alignment: Alignment.centerRight,
//   height: 40,
//   padding: const EdgeInsets.symmetric(horizontal: 8),
//   decoration: BoxDecoration(
//     color: Colors.grey[300],
//     border: Border.all(color: Colors.grey),
//     borderRadius: BorderRadius.circular(12),
//   ),
//   child: TextField(
//     textAlign: TextAlign.right,
//     textAlignVertical: TextAlignVertical.center,
//     style: const TextStyle(
//       fontSize: 24,
//       fontWeight: FontWeight.w900,
//     ),

//     // es dürfen nur Ziffern (auch dezimale) eingetragen werden = Keyboard nur mit Ziffern und decimal:
//     keyboardType: const TextInputType.numberWithOptions(
//       decimal: true,
//     ),
//     // der Input muss mit Regex überprüft werden:
//     inputFormatters: <TextInputFormatter>[
//       FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
//       //FilteringTextInputFormatter.digitsOnly
//     ],

//     decoration: const InputDecoration(
//       contentPadding: EdgeInsets.only(bottom: 14),
//       hintText: 'Endpreis eingeben!',
//       hintStyle: TextStyle(
//         fontSize: 12,
//         fontWeight: FontWeight.w900,
//         color: Colors.red,
//       ),
//       border: InputBorder.none,
//     ),
//   ),
// ),

const normalVerticalSpacing = SizedBox(height: normalDistance);
