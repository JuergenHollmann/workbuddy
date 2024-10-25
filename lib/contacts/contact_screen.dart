import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
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
      body: const SingleChildScrollView(
        child: Divider(thickness: 3, color: wbLogoBlue),

      ),
                       // const Divider(thickness: 3, color: wbLogoBlue),

    );
  }
}
