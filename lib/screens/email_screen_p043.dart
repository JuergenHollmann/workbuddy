import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/user_data.dart';
import 'package:workbuddy/user_select.dart';

/*--------------------------------- *** ---*/
class EMailScreen extends StatefulWidget {
  const EMailScreen({super.key});
/*--------------------------------- *** ---*/
  @override
  State<EMailScreen> createState() => _EMailScreenState();
}

/*--------------------------------- *** ---*/
class _EMailScreenState extends State<EMailScreen> {
/*--------------------------------- *** ---*/
  @override
  void initState() {
    super.initState();
  }

  /*--------------------------------- *** ---*/
  // die Anzahl der User in der Liste zeigen:
  int searchFieldCounter043 = usersData.length;
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
                  const UserSelect(),
                  const SizedBox(height: 20),
                  /*--------------------------------- *** ---*/
                  // const SizedBox(height: 50),
                  /*--------------------------------- *** ---*/
                ],
              ),
            ),
            /*--------------------------------- MiniFooter ---*/
            const Divider(thickness: 3, height: 16, color: wbColorLogoBlue),
            const Column(
              children: [
                // dieser Text wird am Anfang angezeigt:
                Text("WorkBuddy • save time and money • Version 0.001"),
                // nach dem Anklicken des Users werden Name und Status angezeigt:
                // Code todo ...
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
