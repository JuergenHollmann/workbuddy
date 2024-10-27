import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';

class WbDividerWithText extends StatelessWidget {
  const WbDividerWithText({
    super.key, required this.wbDividerText,
  });

 final String wbDividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: 30,
            height: 3,
            color: wbColorAppBarBlue,
          ),
        ),
        wbSizedBoxWidth8,
         Text(
          wbDividerText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        wbSizedBoxWidth8,
        Expanded(
          child: Container(
            width: 30,
            height: 3,
            color: wbColorAppBarBlue,
          ),
        ),
      ],
    );
  }
}
