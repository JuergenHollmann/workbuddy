import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_button_green.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_textfield_currency.dart';
import 'package:workbuddy/main.dart';

class AccountingMenu extends StatelessWidget {
  const AccountingMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      "Eine Buchung erfassen",
      "Eine Buchung erfassen",
      "Eine Buchung erfassen",
      "Eine Buchung erfassen",
      "Eine Buchung erfassen",
      "Eine Buchung erfassen",
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      appBar: AppBar(
        title: const Text(
          'Was möchtest Du tun?',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),
      //    body: SingleChildScrollView(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage("assets/workbuddy_glow_schriftzug.png"),
            ),
            const Divider(thickness: 3, height: 32, color: wbLogoBlue),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (context, index) {
                  return const WBGreenIncomeButton();

                  // return Container(
                  //   height: 80,
                  //   color: Colors.blue,
                  //   child: Text(
                  //     entries[index],
                  //     style: const TextStyle(
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.w900,
                  //       color: Colors.white, // Schriftfarbe
                  //     ),
                  //   ),
                  // );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    // const Divider(thickness: 3, height: 32, color: wbLogoBlue),
                    const SizedBox(height: 32),
              ),
            ),
            const Divider(thickness: 3, height: 32, color: wbLogoBlue),
          ],
        ),
      ),
      //   ),
    );
  }
}
