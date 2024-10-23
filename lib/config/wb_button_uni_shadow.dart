import 'package:flutter/material.dart';

class WbButtonUniShadow extends StatelessWidget {
  const WbButtonUniShadow({
    super.key,
    required this.wbColor,
    required this.wbButtonUniShadowText,
  });

  final Color wbColor;
  final String wbButtonUniShadowText;

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
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              // ignore: unnecessary_string_interpolations
              Text("$wbButtonUniShadowText",
                // WbButtonUniShadow(wbColor: wbColor, wbButtonUniShadowText: wbButtonUniShadowText)
                // 'Einnahme speichern', //"$wbButtonUniShadowText", //'Einnahme speichern',
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
            ],
          ),
        ],
      ),
    );
  }
}
