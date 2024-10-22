import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/widgets/button_accounting.dart';
import 'package:workbuddy/class/navigation_bar_green_neon.dart';
import 'package:workbuddy/widgets/button_communication.dart';
import 'package:workbuddy/widgets/button_companies.dart';
import 'package:workbuddy/widgets/button_customer.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // den gesamten Hintergrund einfärben:
      backgroundColor: Colors.blue, // vorher: primeColor
      appBar: AppBar(
        title: const Text('Was möchtest Du tun?'),
        foregroundColor: Colors.white, // Schriftfarbe
        backgroundColor: wbAppBarBlue, // dunkles Blau
        shadowColor: Colors.black87, // funzt nicht
        elevation: 20, // graue Zone unter der AppBar
      ),

      body: const Center(
        child: Column(
          children: [
            Image(image: AssetImage("assets/workbuddy_patch_and_slogan.png")),
// -----------------------------------------------------------------------------
// "SingleChildScrollView" für kleine Bildschirme oder "GridView" einfügen
// -----------------------------------------------------------------------------
// GridView(gridDelegate: )
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonAccounting(), ButtonCommunication()],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ButtonCustomer(), ButtonCompanies()],
            ),
// -----------------------------------------------------------------------------
// Eigenen Divider mit Stack über der NavigationBar anlegen:
// -----------------------------------------------------------------------------
            //SizedBox(height: 0),
            //StackNeonGreenLine(),
            //Image(image: AssetImage("assets/neon_green_line.png")),
            //SizedBox(height: 20),
            //NavigationBarGreenNeon(),
            // DoubleImageNavigationBar(
            //     image1Path: 'assets/neon_green_line.png',
            //     image2Path: 'assets/neon_green_line.png'),
            //SizedBox(height: 20),
// -----------------------------------------------------------------------------
          ],
        ),
      ),
// -----------------------------------------------------------------------------
// NavigationBar unten:
// -----------------------------------------------------------------------------
      bottomNavigationBar: const NavigationBarGreenNeon(),
    );
  }
}
