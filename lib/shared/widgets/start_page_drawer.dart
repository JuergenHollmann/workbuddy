import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';

class StartPageDrawer extends StatelessWidget {
  const StartPageDrawer({super.key, required Padding child});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // WICHTIG: Alle Paddings von der ListView entfernen!
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: wbDrawerLightOrange,
            ),
            child: Text('WorkBuddy'),
          ),
          ListTile(
            title: const Text('Über uns'),
            onTap: () {
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Themes'),
            onTap: () {
              // ...
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

          //     drawer: Drawer(
          //   backgroundColor: wbDrawerLightOrange,
          //   // hier den Drawer mit SafeArea
          //   child: ListView(
          //     children: const [
          //       ListTile(
          //         title: Text("Einstellungen"),
          //         subtitle: Text("Ja genau hier"),
          //       ),
          //     ],
          //   ),
          // ),
