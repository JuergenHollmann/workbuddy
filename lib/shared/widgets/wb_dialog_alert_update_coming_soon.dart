import 'dart:developer';

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
    log("0017 - WbDialogAlertUpdateComingSoon - angeklickt");
    return
// --------------------------------------------------------------------------
/* MUSTER - das muß zum Aufruf ab "showDialog" zum Widget hinzugefügt werden:
// --------------------------------------------------------------------------
                    GestureDetector(
                      onTap: () {
                        log("Einen Anruf starten");
// --------------------------------------------------------------------------
                        showDialog(
                          context: context,
                          builder: (context) =>
// --------------------------------------------------------------------------
                              const WbDialogAlertUpdateComingSoon(
                            headlineText: "Einen Anruf starten",
                            contentText:
                                "Willst Du jetzt die Nummer\n+49-XXX-XXXX-XXXX\nvon Klaus Müller anrufen?\n\nDiese Funktion kommt bald in einem KOSTENLOSEN Update!\n\nHinweis: CS-282"),);*/
// --------------------------------------------------------------------------
        AlertDialog(
      title: Text(
        headlineText,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
      ),
      content: Text(
        contentText,
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
