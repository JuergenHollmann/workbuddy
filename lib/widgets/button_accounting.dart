import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:workbuddy/accounting/accounting_menu.dart';

class ButtonAccounting extends StatelessWidget {
  const ButtonAccounting({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: GestureDetector(
        onTap: () {
          log("Wechsle zur Seite Buchhaltung-Menü");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AccountingMenu(),
            ),
          );
        },
        child: const Image(
          image: AssetImage("assets/icon_button_buchhaltung.png"),
        ),
      ),
    );
  }
}
