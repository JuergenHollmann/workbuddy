import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:workbuddy/wb_communication.dart/communication_menu.dart';

class ButtonCommunication extends StatelessWidget {
  const ButtonCommunication({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: GestureDetector(
        onTap: () {
          log("Wechsle zur Seite Kommunikation 1");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CommunicationMenu()),
          );
        },
        child: const Image(
          image: AssetImage("assets/icon_button_kommunikation.png"),
        ),
      ),
    );
  }
}
