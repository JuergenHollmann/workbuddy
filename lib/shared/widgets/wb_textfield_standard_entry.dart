import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';

class WbTextfieldStandardEntry extends StatelessWidget {
  const WbTextfieldStandardEntry({
    super.key,
    required this.headlineText,
    required this.hintText,
  });

  final String headlineText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(headlineText,
      
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 14),
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: wbColorAppBarBlue,
                ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}