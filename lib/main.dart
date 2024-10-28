import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';
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
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Sprache',
      style: optionStyle,
    ),
    Text(
      'Index 1: Design',
      style: optionStyle,
    ),
    Text(
      'Index 2: Erinnerungen',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wbColorBackgroundBlue,
      appBar: AppBar(
        title: Text(widget.title),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          const P01LoginScreen(),
          _widgetOptions[_selectedIndex],
        ],
      ),
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
              child: //
                  Image(
                image: AssetImage("assets/workbuddy_glow_schriftzug.png"),
              ),
              // WelcomeText(),
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





// import 'package:flutter/material.dart';
// import 'package:workbuddy/config/wb_colors.dart';
// import 'package:workbuddy/features/authentication/screens/p01_login_screen.dart';
// import 'package:workbuddy/shared/widgets/start_page_drawer.dart';



// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       backgroundColor: wbColorBackgroundBlue,
  //       appBar: AppBar(title: const Text("WorkBuddy"),
  //       //drawer: StartPageDrawer(child: child)),
  //       body: const SafeArea(
  //         child: Column(
  //           children: [
  //             P01LoginScreen(),
  //           ],
  //         ),
  //       ), // SafeArea

  //     ),
  //   );
  // }
// }
// /*--------------------------------- Audio ---*/
// class Audio {
//   static load(String s) {}
// }

// class AudioCache {
//   void play(String alarmAudioPath) {}
// }
