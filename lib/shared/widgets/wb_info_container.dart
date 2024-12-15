import 'package:flutter/material.dart';

class WbInfoContainer extends StatelessWidget {
  const WbInfoContainer({
    super.key,
    required this.infoText, required this.wbColors,
  });

  final String infoText;
  final Color wbColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // maximale Breite
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
        padding: const EdgeInsets.all(8.0),
        child: Text(
          infoText, // "WorkBuddy • Free-BASIC-Version 0.003",
          textAlign: TextAlign.center,
          maxLines: null,
        ),
      ),
    );
  }
}
