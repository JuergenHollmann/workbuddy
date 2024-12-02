import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/shared/widgets/button_accounting.dart';
import 'package:workbuddy/shared/widgets/button_communication.dart';
import 'package:workbuddy/shared/widgets/button_companies.dart';
import 'package:workbuddy/shared/widgets/button_customer.dart';
import 'package:workbuddy/shared/widgets/navigation_bar_green_neon.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // den gesamten Hintergrund einfärben:
      backgroundColor: Colors.blue, // vorher: primeColor
      /*--------------------------------- AppBar ---*/
      appBar: AppBar(
        title: const Text(
          'Was möchtest Du tun?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ), // Schriftfarbe
        ),
        foregroundColor: Colors.white,
        backgroundColor: wbColorAppBarBlue, // dunkles Blau
        shadowColor: Colors.black87, // Schatten
        elevation: 20, // graue Zone für den Schatten unter der AppBar
      ),
      /*--------------------------------- Logo ---*/
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                  image: AssetImage(
                "assets/workbuddy_patch_and_slogan.png",
              )),
              /*--------------------------------- Buttons ---*/
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ButtonAccounting(), ButtonCommunication()],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ButtonCustomer(), ButtonCompanies()],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      /*--------------------------------- NavigationBar ---*/
      bottomNavigationBar: const NavigationBarGreenNeon(),
    );
  }
}
