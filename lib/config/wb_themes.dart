import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';

final ThemeData wbLightTheme = ThemeData(
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: normalTextSize),
    headlineMedium: TextStyle(fontSize: bigTextSize),
    bodySmall: TextStyle(fontSize: smallTextSize),
  ),
  scaffoldBackgroundColor: wbBackgroundBlue,
);

/* zur Auswahl für die Texte in ThemeData:
    displayLarge
    displayMedium
    displaySmall
    headlineLarge
    headlineMedium
    headlineSmall
    titleLarge
    titleMedium
    titleSmall
    bodyLarge
    bodyMedium
    bodySmall
    labelLarge
    labelMedium
    labelSmall
*/    

// const wbNormTextFieldHeaderRight = Text(
//   "Endpreis in €",
//   textAlign: TextAlign.right,
//   style: TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.bold,
//     color: Colors.black,
//   ),
// );

//  var wbNormTextFieldBodyRight = Container(
//   alignment: Alignment.centerRight,
//   height: 40,
//   padding: const EdgeInsets.symmetric(horizontal: 8),
//   decoration: BoxDecoration(
//     color: Colors.grey[300],
//     border: Border.all(color: Colors.grey),
//     borderRadius: BorderRadius.circular(12),
//   ),), child: TextField(
//     textAlign: TextAlign.right,
//     textAlignVertical: TextAlignVertical.center,
//     style: const TextStyle(
//       fontSize: 24,
//       fontWeight: FontWeight.w900,
//     );

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