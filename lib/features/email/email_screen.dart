// das kommt alles aus dem Package:
// import 'package:example/pagination.dart';
// import 'package:example/custom.dart';
// import 'package:example/dynamic_height.dart';
// import 'package:example/network_sample.dart';
// import 'package:example/pagination.dart';
import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'email_user_selection.dart';

class EMailScreen extends StatelessWidget {
  const EMailScreen({super.key});
/*--------------------------------- *** ---*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      /*--------------------------------- *** ---*/
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
      body: const EmailSearchField(),
    );
  }
}
/*--------------------------------- *** ---*/
class EmailSearchField extends StatefulWidget {
  const EmailSearchField({super.key});

  @override
  State<EmailSearchField> createState() => _EmailSearchFieldState();
}
/*--------------------------------- *** ---*/
class _EmailSearchFieldState extends State<EmailSearchField> {
  @override
  void initState() {
    super.initState();
  }
  /*--------------------------------- *** ---*/
  final TextEditingController searchController = TextEditingController();
  // var suggestions = <String>[];
  // int counter = 0;
  // var selected = '';
  /*--------------------------------- *** ---*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          /*--------------------------------- *** ---*/
          const EmailUserSelection(),
          // const SizedBox(height: 20),
          // /*--------------------------------- Abstand ---*/
          // const SizedBox(height: 50),
          // Text(
          //   'Counter: $counter',
          //   style: Theme.of(context).textTheme.bodyLarge,
          // ),
          /*--------------------------------- *** ---*/
        ],
      ),
    );
  }
}
