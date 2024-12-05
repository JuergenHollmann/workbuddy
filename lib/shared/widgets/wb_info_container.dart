import 'package:flutter/material.dart';

class WbInfoContainer extends StatelessWidget {
  const WbInfoContainer({
    super.key,
    required this.infoText,
  });

  final String infoText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // maximale Breite
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            //
            color: Colors.black,
            width: 3,
          ),
        ),
        color: Colors.yellow,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          infoText, // "WorkBuddy • Free-BASIC-Version 0.002",
          textAlign: TextAlign.center,
          maxLines: null,
        ),
      ),
    );
  }
}
