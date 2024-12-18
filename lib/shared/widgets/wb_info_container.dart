import 'package:flutter/material.dart';

class WbInfoContainer extends StatelessWidget {
  const WbInfoContainer({
    super.key,
    required this.infoText,
    required this.wbColors,
  });

  final String infoText;
  final Color wbColors;

  /*--------------------------------- WbInfoContainer ---*/
  /* Der Aufruf muss so starten: "bottomSheet: WbInfoContainer(..." */

  @override
  Widget build(BuildContext context) {
    return Container(
      /* das sorgt für die automatische Anpassung der Höhe, wenn mehr Text hineingeschrieben wird */
      height: double.tryParse('.'),
      /* das sogt für die maximale Breite */
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ),
        color: wbColors, // Colors.yellow,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 16, 16),
        child: Text(
          maxLines: null,
          infoText, // "WorkBuddy • Free-BASIC-Version 0.003",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
