import 'package:flutter/material.dart';
import 'package:workbuddy/class/navigation_bar_green_neon.dart';

class DoubleImageNavigationBar extends StatelessWidget {
  final String image1Path;
  final String image2Path;

  const DoubleImageNavigationBar({
    super.key,
    required this.image1Path,
    required this.image2Path,
  });

  @override
  Widget build(BuildContext context) {
    //const NavigationBarGreenNeon();
    return AppBar(
      automaticallyImplyLeading: false,
      //preferred: bottom
      backgroundColor: Colors.transparent,
      flexibleSpace: Stack(
        children: [
          Image.asset(image1Path, fit: BoxFit.cover),
          //const SizedBox(height: 160),
          const NavigationBarGreenNeon(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 15,
            child: Image.asset(image2Path),
          ),
        ],
      ),
    );
  }
}
