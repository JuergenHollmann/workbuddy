import 'package:flutter/material.dart';

class WbDialogAlertUpdateComingSoon extends StatelessWidget {
  const WbDialogAlertUpdateComingSoon({
    super.key,
    required this.headlineText,
    required this.contentText,
  });

  final String headlineText;
  final String contentText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        // ignore: unnecessary_string_interpolations
        "$headlineText", // "Update-Hinweis 112",
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
      ),
      content: Text(
        // ignore: unnecessary_string_interpolations
        "$contentText",
        // 'Diese Funktion kommt bald in einem kostenlosen Update!',
        style: const TextStyle(fontSize: 20),
      ),
      actions: [
        TextButton(
          child: const Text(
            "OK",
            style: TextStyle(
              color: Colors.blue,
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                )
              ],
              fontSize: 40,
              fontWeight: FontWeight.w900,
              letterSpacing: 2, // Zwischenraum der Buchtstaben
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
