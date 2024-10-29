import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/config/wb_sizes.dart';
import 'package:workbuddy/features/authentication/screens/p01_login_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const appTitle = 'WorkBuddy - "save time and money"';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*--------------------------------- Drawer Vorbereitung ---*/
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
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
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /*--------------------------------- ENDE Drawer Vorbereitung ---*/
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
            fontSize: 20,
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          wbSizedBoxHeight8,
          const P01LoginScreen(),
          _widgetOptions[_selectedIndex],
        ],
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
            ListTile(
              title: const Text(
                'Sprache',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: wbColorAppBarBlue,
                ),
              ),
              selected: _selectedIndex == 0,
              onTap: () {
                // Zuerst den State der App aktualisieren ...
                _onItemTapped(0);
                // ... dann den Drawer schließen:
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Designauswahl'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Erinnerungen'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            //const WelcomeText(),
          ],
        ),
      ),
    );
  }
}
