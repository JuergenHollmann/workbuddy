// Todo's:

/* Wechsle die Farbe des Buttons beim Anklicken:
String color = isSunny ? 'yellow' : 'blue'; // ternärer Operator? */

/* anstelle von "MainSelectionScreen" eine Liste mit Verknüpfungen "NavigateToPageName" zu allen Seiten anlegen:
builder: (context) => const MainSelectionScreen(), // NavigateToPageName(), //MainSelectionScreen(),*/

import 'dart:developer';

import 'package:flutter/material.dart';

class WbButtonUniversal extends StatelessWidget {
  const WbButtonUniversal({
    super.key,
    required this.wbColor,
    required this.icon,
    required this.wbButtonUniversalText,
    required this.width,
    required this.onButtonTap,
  });

  final Color wbColor;
  final IconData icon;
  final double width;
  final String wbButtonUniversalText;
  final void Function() onButtonTap;

  @override
  Widget build(BuildContext context) {
    log("0031 - WbButtonUniversal - aktiviert");
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        width: width,
        height: 80,
        decoration: ShapeDecoration(
          shadows: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 8,
              offset: Offset(4, 4),
              spreadRadius: 0,
            )
          ],
          color: wbColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              /*--------------------------------- Icon ---*/
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
                shadows: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            Expanded(
              // -------------------------------------------------- Padding Center Text ---
              // child: Center(
              // /* dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist ) */
              // child: Padding(
              //   padding: const EdgeInsets.only(right: 80),
              // -------------------------------------------------- Text ---
              child: Text(
                wbButtonUniversalText,
                style: const TextStyle(
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    )
                  ],
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2, // Zwischenraum der Buchtstaben
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
