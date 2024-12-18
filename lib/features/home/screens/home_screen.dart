import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/features/authentication/screens/p01_login_screen.dart';
import 'package:workbuddy/shared/widgets/wb_info_container.dart';

class WbHomePage extends StatefulWidget {
  const WbHomePage({super.key, required this.title});

  final String title;

  @override
  State<WbHomePage> createState() => _WbHomePageState();
}

class _WbHomePageState extends State<WbHomePage> {
  /*--------------------------------- Drawer Vorbereitung ---*/
  int _selectedDrawerIndex = 0;
  /*--------------------------------- *** ---*/
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetDrawerOptions = <Widget>[
    Text(
      "", //'Index 0: Sprache',
      style: optionStyle,
    ),
    Text(
      "", //'Index 1: Design',
      style: optionStyle,
    ),
    Text(
      "", //'Index 2: Erinnerungen',
      style: optionStyle,
    ),
    Text(
      "", //'Index 3: Sound',
      style: optionStyle,
    ),
  ];

  void _onDrawerItemTapped(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    log("0047 - home_screen $_widgetDrawerOptions[$_selectedDrawerIndex]");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wbColorBackgroundBlue,

      /*--------------------------------- AppBar ---*/
      appBar: AppBar(
        backgroundColor: wbColorAppBarBlue,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: Colors.white, // Schriftfarbe
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              color: Colors.white,
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      /*--------------------------------- P01LoginScreen ---*/
      body: Center(
        child: Column(
          children: [
            wbSizedBoxHeight8,
            Expanded(child: const P01LoginScreen()),
            // _widgetDrawerOptions[_selectedDrawerIndex],
            /*--------------------------------- WbInfoContainer ---*/
            WbInfoContainer(
              infoText: 'WorkBuddy • Free-BASIC-Version 0.002',
              wbColors: Colors.yellow,
            ),
            /*--------------------------------- WbInfoContainer ENDE ---*/
          ],
        ),
      ),
      /*--------------------------------- Drawer Aufruf ---*/
      drawer: Drawer(
        // Eine ListView in den Drawer implementieren:
        child: ListView(
          // WICHTIG: JEDES Padding von der ListView ENTFERNEN !!!
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image(
                image: AssetImage("assets/workbuddy_glow_schriftzug.png"),
              ),
            ),

            /*--- ListTile 0 ---*/
            ListTile(
              title: const Text(
                'Sprache',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: wbColorAppBarBlue,
                ),
              ),
              selected: _selectedDrawerIndex == 0,
              onTap: () {
                // Zuerst den State der App aktualisieren ...
                _onDrawerItemTapped(0);
                // ... dann den Drawer schließen:
                Navigator.pop(context);
              },
            ),

            /*--- ListTile 1 ---*/
            ListTile(
              title: const Text('Designauswahl'),
              selected: _selectedDrawerIndex == 1,
              onTap: () {
                _onDrawerItemTapped(1);
                Navigator.pop(context);
              },
            ),

            /*--- ListTile 2 ---*/
            ListTile(
              title: const Text('Erinnerungen'),
              selected: _selectedDrawerIndex == 2,
              onTap: () {
                _onDrawerItemTapped(2);
                Navigator.pop(context);
              },
            ),

            /*--- ListTile 3 ---*/
            ListTile(
              title: const Text('Sound an/aus'),
              selected: _selectedDrawerIndex == 3,
              onTap: () {
                _onDrawerItemTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
