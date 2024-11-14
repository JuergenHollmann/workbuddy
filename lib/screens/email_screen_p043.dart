import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
//import 'package:searchfield/searchfield.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/custom.dart';

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
  final TextEditingController searchController = TextEditingController();
  int counter = 0;
  // int counter = UserSelect. //users.length); //UserSelect
  // log("$counter");

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
        child: ListView(
          semanticChildCount: 3,
          children: [
            /*--------------------------------- *** ---*/
            Center(

              child: Text(                               
                        //  setState(() {
                        //   });

                'Insgesamt $counter E-Mail-Adressen gefunden', //SearchFieldListItem  // Suggestion
                style: const TextStyle(
                  fontSize: 16,
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
    );
  }
}
