import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wbColorLightYellowGreen, // sehr helles Gelbgrün
      appBar: AppBar(
        title: const Text(
          'Kontakt bearbeiten',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
        //toolbarHeight: 60,
      ),
      body: Center(
        child: Column(
          children: [
            const Divider(thickness: 3, color: wbLogoBlue),
            const SizedBox(
              height: 0,
            ),
            Container(
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/workbuddy_glow_logo.png"),
                ),
              ),
            ),
            const Divider(thickness: 3, color: wbLogoBlue),
          ],
        ),
      ),
    );
  }
}
