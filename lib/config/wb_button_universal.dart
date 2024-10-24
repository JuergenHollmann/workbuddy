import 'package:flutter/material.dart';

class WbButtonUniversal extends StatelessWidget {
  const WbButtonUniversal({
    super.key,
    required this.wbColor,
    required this.icon,
    required this.wbButtonUniversalText,
    required this.onButtonTap,
  });

  final Color wbColor;
  final IconData icon;
  final String wbButtonUniversalText;

  final void Function() onButtonTap;

  @override
  Widget build(BuildContext context) {
    // Button erstellen:
    return Container(
      width: 380,
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
        color: wbColor, // wbOKButtonGreen,
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
      child: GestureDetector(
        onTap: onButtonTap,

/* Wechsle die Farbe des Buttons beim Anklicken:
String color = isSunny ? 'yellow' : 'blue'; // ternärer Operator? */

/* anstelle von "SelectionPage" eine Liste mit Verknüpfungen "NavigateToPageName" zu allen Seiten anlegen:
builder: (context) => const SelectionPage(), // NavigateToPageName(), //SelectionPage(),*/

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
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
                  child: Center(
                    /* dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist ) */
                    child: Padding(
                      padding: const EdgeInsets.only(right: 56),
                      child: Text(
                        // ignore: unnecessary_string_interpolations
                        "$wbButtonUniversalText",
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
