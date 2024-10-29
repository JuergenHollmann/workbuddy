import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_sizes.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        /*--------------------------------- Image Logo ---*/
        SizedBox(
          height: 120,
          width: 120,
          child: Image(
              image:
                  AssetImage("assets/workbuddy_logo_neon_green_512x512.png")),
        ),
        /*--------------------------------- Divider ---*/
        Divider(thickness: 4, color: Colors.blue),
        /*--------------------------------- Text ---*/
        Text(
          "Herzlich willkommen bei",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 0, 80, 220)),
          textAlign: TextAlign.center,
        ),
        /*--------------------------------- Abstand ---*/
        wbSizedBoxHeight8,
        /*--------------------------------- Image ---*/
        Image(image: AssetImage("assets/workbuddy_glow_schriftzug.png")),
        /*--------------------------------- Text ---*/
        Text(
          "\"save time and money!\"",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 0, 80, 220)),
          textAlign: TextAlign.center,
        ),
        /*--------------------------------- Divider ---*/
        Divider(thickness: 4, color: Colors.blue),
        /*--------------------------------- Abstand ---*/
        wbSizedBoxHeight8,
        /*--------------------------------- Text ---*/
        Text(
          "Bitte melde Dich an:",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 255, 0, 0)),
          textAlign: TextAlign.center,
        ),
        /*--------------------------------- ENDE ---*/
      ],
    );
  }
}
