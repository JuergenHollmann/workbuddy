import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:workbuddy/wb_companies/company_screen.dart';

class ButtonCompanies extends StatelessWidget {
  const ButtonCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: GestureDetector(
        onTap: () {
          log("Wechsle zur Seite Firmen 1");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CompanyScreen(),
            ),
          );
        },
        child: const Image(
          image: AssetImage("assets/icon_button_firmen.png"),
        ),
      ),
    );
  }
}
