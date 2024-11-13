import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/custom.dart';

/*--------------------------------- *** ---*/
class EMailScreen extends StatelessWidget {
  const EMailScreen({super.key});
/*--------------------------------- *** ---*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,
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
      /*--------------------------------- *** ---*/
      body: const SearchFieldEMail(),
    );
  }
}

/*--------------------------------- *** ---*/
class SearchFieldEMail extends StatefulWidget {
  const SearchFieldEMail({super.key});

  @override
  State<SearchFieldEMail> createState() => _SearchFieldEMailState();
}

class _SearchFieldEMailState extends State<SearchFieldEMail> {
  @override
  void initState() {
    super.initState();
  }

  /*--------------------------------- *** ---*/
  final TextEditingController searchController = TextEditingController();
  int counter = 0;
  /*--------------------------------- *** ---*/
  @override
  Widget build(BuildContext context) {
    /*--------------------------------- *** ---*/
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            /*--------------------------------- *** ---*/
            const UserSelect(),
            const SizedBox(height: 20),
            /*--------------------------------- *** ---*/
            // const SizedBox(height: 50),
            /*--------------------------------- *** ---*/
            Text(
              'Counter: $counter',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            /*--------------------------------- *** ---*/
          ],
        ),
      ),
    );
  }
}
