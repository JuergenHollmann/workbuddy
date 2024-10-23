import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:workbuddy/class/selection_screen.dart';

class WbButtonUniversal extends StatelessWidget {
  const WbButtonUniversal({
    super.key,
    required this.wbColor,
    required this.wbButtonUniversalText,
    // required Icon iconSelector,
  });

  final Color wbColor;
  final String wbButtonUniversalText;
  // final dynamic NavigateToPageName;
  // final String iconSelector;

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
        onTap: () {
          /* 
        Wechsle die Farbe des Buttons beim Anklicken:
        String color = isSunny ? 'yellow' : 'blue'; // ternärer Operator*/

          log("wb_button_universal.dart - angeklickt");
          Navigator.push(
            context,
            MaterialPageRoute(
              /* anstelle von "SelectionPage" eine Liste mit Verknüpfungen "NavigateToPageName" zu allen Seiten anlegen */
              builder: (context) =>
                  const SelectionPage(), // NavigateToPageName(), //SelectionPage(),
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
                // Padding(
                //   padding: EdgeInsets.only(left: 16),
                //   child: Icon(
                //     Icons
                //         .payments_outlined, // iconSelector, //payments_outlined,
                //     color: Colors.white,
                //     size: 40,
                //     shadows: [
                //       BoxShadow(
                //         color: Colors.black,
                //         blurRadius: 8,
                //         offset: Offset(4, 4),
                //         spreadRadius: 0,
                //       )
                //     ],
                //   ),
                // ),

                // Expanded(flex: 1, child:SizedBox.shrink( //todo (siehe 434/F4)
                Expanded(
                  //flex: 1,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 48,
                      ), // dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist )
                      child: Text(
                        'Einnahme speichern', //"$wbButtonUniversalText", //'Einnahme speichern',
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

class NavigateToPageName {
  const NavigateToPageName();
}
