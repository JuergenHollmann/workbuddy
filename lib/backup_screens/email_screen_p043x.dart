import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/config/wb_text_form_field.dart';
import 'package:workbuddy/features/email/mock_email_users_data.dart';
import 'package:workbuddy/features/email/email_user_selection.dart';


/*--------------------------------- *** ---*/
class EMailScreenP043 extends StatefulWidget {
  const EMailScreenP043({super.key});
/*--------------------------------- *** ---*/
  @override
  State<EMailScreenP043> createState() => _EMailScreenP043State();
}

/*--------------------------------- *** ---*/
class _EMailScreenP043State extends State<EMailScreenP043> {
/*--------------------------------- *** ---*/
  @override
  void initState() {
    super.initState();
  }

  /*--------------------------------- *** ---*/
  // die Gesamt-Anzahl aller User in der Liste zeigen:
  int searchFieldCounter043 = emailUsersData.length;
  /*--------------------------------- *** ---*/
  // die gefundene Anzahl aller User in der Liste zeigen:
  int searchFieldFoundCounter043 =
      emailUsersData.length; //emailUsersData.length;
  /*--------------------------------- Scaffold ---*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      /*--------------------------------- AppBar ---*/
      appBar: AppBar(
        title: const Text(
          'E-Mail versenden',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbColorBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),
      /*--------------------------------- ListView ---*/
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                semanticChildCount: 3,
                children: [
                  /*--------------------------------- Info-Überschrift ---*/
                  Center(
                    child: Text(
                      "Auswahl aus $searchFieldCounter043 E-Mail-Adressen:",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  /*--------------------------------- *** ---*/
                  const EmailUserSelection(),
                  /*--------------------------------- Abstand ---*/
                  wbSizedBoxHeight16,
                  /*--------------------------------- E-Mail Betreff ---*/
                  const WbTextFormField(
                    labelText: "Betreff",
                    labelFontSize20: 20,
                    hintText: "Betreff der E-Mail eintragen",
                    inputTextFontSize22: 20,
                    prefixIcon: Icons.psychology_alt_outlined,
                    prefixIconSize28: 48, //28,
                    inputFontWeightW900: FontWeight.bold,
                    inputFontColor: wbColorAppBarBlue,
                    fillColor: wbColorBackgroundBlue,
                  ),
                  /*--------------------------------- Abstand ---*/
                  wbSizedBoxHeight16,
                  /*--------------------------------- E-Mail Text-Nachricht ---*/
                  const WbTextFormField(
                    labelText: "E-Mail Text-Nachricht",
                    labelFontSize20: 20,
                    hintText: "Nachricht der E-Mail verfassen",
                    inputTextFontSize22: 20,
                    prefixIcon: Icons.email_outlined,
                    prefixIconSize28: 48,
                    inputFontWeightW900: FontWeight.bold,
                    inputFontColor: Colors.black,
                    fillColor: Colors.white,
                  ),
                ],
              ),
            ),
            /*--------------------------------- MiniFooter ---*/
            const Divider(thickness: 3, height: 16, color: wbColorLogoBlue),
            Column(
              children: [
                Text(
                  "Gefunden: $searchFieldFoundCounter043",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // dieser Text wird am Anfang angezeigt:
                const Text("WorkBuddy • save time and money • Version 0.001"),
                // nach dem Anklicken des Users werden Name und Status angezeigt:
                // Text("Auswahl aus $searchFieldCounter043 E-Mail-Adressen:"),
              ],
            ),
            const Divider(thickness: 3, height: 16, color: wbColorLogoBlue),
            /*--------------------------------- MiniFooter ENDE ---*/
          ],
        ),
      ),
    );
  }
}
