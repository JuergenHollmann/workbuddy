import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:workbuddy/wb_contacts/contact_menu.dart';

class ButtonCustomer extends StatelessWidget {
  const ButtonCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: GestureDetector(
        onTap: () {
          log("0015 - button_customer => ContactMenu");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactMenu(),
            ),
          );
        },
        child: const Image(
          image: AssetImage("assets/icon_button_kunden.png"),
        ),
      ),
    );
  }
}
