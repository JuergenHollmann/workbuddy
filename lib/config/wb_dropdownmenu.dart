import 'package:flutter/material.dart';

class WBDropdownMenu extends StatefulWidget {
  const WBDropdownMenu({
    super.key,
    required this.headlineText,
  });

  final String headlineText;

  @override
  State<WBDropdownMenu> createState() => _WBDropdownMenuState();
}

class _WBDropdownMenuState extends State<WBDropdownMenu> {
  //final String headlineText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400,
          child: Text(
            widget.headlineText, //"Wo wurde eingekauft?", // ERROR!

            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              //value: _selectedValue,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              items: const [
                DropdownMenuItem(value: "Wo_01", child: Text("OBI")),
                DropdownMenuItem(value: "Wo_02", child: Text("TOOM")),
                DropdownMenuItem(value: "Wo_03", child: Text("Kaufland")),
                DropdownMenuItem(value: "Wo_04", child: Text("ACTION")),
                DropdownMenuItem(value: "Wo_05", child: Text("WOOLWORTH")),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  //_selectedValue = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
