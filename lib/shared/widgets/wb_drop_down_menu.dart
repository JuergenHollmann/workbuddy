import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';

class WbDropDownMenu extends StatelessWidget {
  const WbDropDownMenu({
    super.key,
    this.label,
  });

  final String? label;

  @override
  Widget build(BuildContext context) {
    // String label = "wertzurdesf";  // bringt hier nichts

    return DropdownMenu(
      width: 360,
      textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w900,
        color: wbColorLogoBlue
        //backgroundColor: Colors.white,
      ),
      label: Text(
        "Kontakt-Status",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: wbColorButtonBlue,
          backgroundColor:wbColorLightYellowGreen,
        ),
      ),
      leadingIcon: Icon(
        Icons.folder_shared_outlined,
        size: 30,
      ),
      menuHeight: 320, // ausklappbare Maximalhöhe
      hintText: "Bitte auswählen", // funzt nicht?
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
        filled: true,
        fillColor: wbColorLightYellowGreen,

        /*--- border ---*/
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        outlineBorder: BorderSide(
          color: wbColorLogoBlue,
          width: 10,
        ),
      ),

      /*--------------------------------- *** ---*/
      dropdownMenuEntries: <DropdownMenuEntry<int>>[
        /*--------------------------------- *** ---*/
        DropdownMenuEntry(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          leadingIcon: Icon(
            Icons.folder_shared_outlined,
            size: 30,
          ),
          value: 1,
          label: "Kontakt",
        ),
        /*--------------------------------- *** ---*/
        DropdownMenuEntry(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          leadingIcon: Icon(
            Icons.folder_shared_outlined,
            size: 30,
          ),
          value: 2,
          label: "Interessent",
        ),
        /*--------------------------------- *** ---*/
        DropdownMenuEntry(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          leadingIcon: Icon(
            Icons.folder_shared_outlined,
            size: 30,
          ),
          value: 3,
          label: "Kunde",
        ),
        /*--------------------------------- *** ---*/
        DropdownMenuEntry(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          leadingIcon: Icon(
            Icons.folder_shared_outlined,
            size: 30,
          ),
          value: 4,
          label: "Kunde + Lieferant",
        ),
        /*--------------------------------- *** ---*/
        DropdownMenuEntry(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          leadingIcon: Icon(
            Icons.folder_shared_outlined,
            size: 30,
          ),
          value: 5,
          label: "Lieferant",
        ),
        /*--------------------------------- *** ---*/
        // DropdownMenuEntry(value: 6, label: "- nicht zugeordnet -"), // bringt hier nichts
        /*--------------------------------- *** ---*/
      ],
    );
  }
}
// \nWorkBuddy • Free-BASIC-Version 0.002