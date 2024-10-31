import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:workbuddy/screens/selection_screen.dart';

class WBRedButton extends StatelessWidget {
  const WBRedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Button erstellen:
    return Container(
      width: 380,
      height: 60,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(4, 4),
            spreadRadius: 0,
          )
        ],
        color: Colors.red,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        // shadows: const [
        //   BoxShadow(
        //     color: wbColorButtonShadowGrey,
        //     blurRadius: 5,
        //     offset: Offset(0, 12),
        //     spreadRadius: 0,
        //   )
        // ],
      ),
      child: GestureDetector(
        onTap: () {
          log("Wechsle zur Seite 2 = SelectionPage");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SelectionPage(),
            ),
          );
        },
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.payments_outlined,
                    color: Colors.white,
                    size: 40,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),

                // Expanded(flex: 1, child:SizedBox.shrink( //todo (siehe 434/F4)
                Expanded(
                  //flex: 1,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 48,
                      ), // dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist )
                      child: Text(
                        'Ausgabe speichern',
                        style: TextStyle(
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
                          // fontFamily: 'Roboto' oder 'SF Pro Display', soll ich die verwenden? todo?
                          fontWeight: FontWeight.w900,
                          // height: 1, // nur wenn der Text innerhalb des Buttons verschoben werden soll
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
