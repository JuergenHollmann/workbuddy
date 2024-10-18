import 'package:flutter/material.dart';
import 'package:workbuddy/class/navigation_bar_green_neon.dart';

class AccountingScreen extends StatelessWidget {
  const AccountingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // den gesamten Hintergrund einfärben:
      backgroundColor: Colors.blue, // vorher: primeColor
      appBar: AppBar(
        title: const Text('Buchhaltung'),
        foregroundColor: Colors.white, // Schriftfarbe
        backgroundColor: const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
        shadowColor: Colors.black87, // funzt nicht
        elevation: 20, // graue Zone unter der AppBar
      ),

      body:  Center(
        child: Column(
          children: [
            const SizedBox(height: 8),
            const Image(image: AssetImage("assets/workbuddy_glow_schriftzug.png")),
// // -----------------------------------------------------------------------------
// // ListView mit Auswahl der Aktionen einblenden
// // -----------------------------------------------------------------------------
// /*  */
// // -----------------------------------------------------------------------------
//           ],
//         ),
//       ),
// // -----------------------------------------------------------------------------
// // NavigationBar unten:
// // -----------------------------------------------------------------------------
//       bottomNavigationBar: const NavigationBarGreenNeon(),
//     );
//   }
// }

SizedBox(
    width: 393,
    height: 777,
    child: Stack(
        children: [
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 393,
                    height: 777,
                    decoration: const BoxDecoration(color: Color(0xFFECECED)),
                ),
            ),
            Positioned(
                left: 16,
                top: 204,
                child: Container(
                    width: 361,
                    height: 56,
                    padding: const EdgeInsets.only(left: 16, right: 32),
                    decoration: ShapeDecoration(
                        color: const Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 3),
                            borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            const Text(
                                '􀀀',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 27.23,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                ),
                            ),
                            const SizedBox(width: 27),
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    Container(
                                        width: 96,
                                        height: 32,
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                                        child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                                Text(
                                                    'Einnahme',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontFamily: 'SF Pro',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0.05,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    const SizedBox(width: 27),
                                    const Text(
                                        '􀍷',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 27.23,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                        ),
                                    ),
                                    const SizedBox(width: 27),
                                    Container(
                                        width: 95,
                                        height: 32,
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                                        child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                                SizedBox(
                                                    width: 89,
                                                    child: Text(
                                                        'Ausgabe',
                                                        style: TextStyle(
                                                            color: Color(0xFFFF0000),
                                                            fontSize: 20,
                                                            fontFamily: 'SF Pro',
                                                            fontWeight: FontWeight.w700,
                                                            height: 0.05,
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 512,
                child: SizedBox(
                    width: 361,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Expanded(
                                child: Container(
                                    height: double.infinity,
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Container(
                                                width: double.infinity,
                                                height: 60,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        const SizedBox(
                                                            width: double.infinity,
                                                            child: Text(
                                                                'Warengruppe',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 15.28,
                                                                    fontFamily: 'Roboto',
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 0.09,
                                                                ),
                                                            ),
                                                        ),
                                                        Container(
                                                            width: double.infinity,
                                                            padding: const EdgeInsets.all(8),
                                                            decoration: ShapeDecoration(
                                                                color: Colors.black.withOpacity(0.10000000149011612),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        width: 1.09,
                                                                        color: Colors.black.withOpacity(0.10000000149011612),
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                            ),
                                                            child: Row(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                    Text(
                                                                        'Welche Kategorie?',
                                                                        style: TextStyle(
                                                                            color: Colors.black.withOpacity(0.5),
                                                                            fontSize: 15.28,
                                                                            fontFamily: 'Roboto',
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 0.09,
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 588,
                child: SizedBox(
                    width: 361,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Expanded(
                                child: Container(
                                    height: double.infinity,
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Container(
                                                width: double.infinity,
                                                height: 60,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        const SizedBox(
                                                            width: double.infinity,
                                                            child: Text(
                                                                'Wer hat eingekauft?',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 15.28,
                                                                    fontFamily: 'Roboto',
                                                                    fontWeight: FontWeight.w500,
                                                                    height: 0.09,
                                                                ),
                                                            ),
                                                        ),
                                                        Container(
                                                            width: double.infinity,
                                                            padding: const EdgeInsets.all(8),
                                                            decoration: ShapeDecoration(
                                                                color: Colors.black.withOpacity(0.10000000149011612),
                                                                shape: RoundedRectangleBorder(
                                                                    side: BorderSide(
                                                                        width: 1.09,
                                                                        color: Colors.black.withOpacity(0.10000000149011612),
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(10),
                                                                ),
                                                            ),
                                                            child: Row(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                    Text(
                                                                        'Welcher Einkäufer?',
                                                                        style: TextStyle(
                                                                            color: Colors.black.withOpacity(0.5),
                                                                            fontSize: 15.28,
                                                                            fontFamily: 'Roboto',
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 0.09,
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 687,
                child: SizedBox(
                    width: 361,
                    height: 41,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Expanded(
                                child: SizedBox(
                                    height: double.infinity,
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                            Expanded(
                                                child: SizedBox(
                                                    height: double.infinity,
                                                    child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                            Expanded(
                                                                child: Container(
                                                                    height: double.infinity,
                                                                    padding: const EdgeInsets.all(8),
                                                                    decoration: ShapeDecoration(
                                                                        color: const Color(0x4CFF0000),
                                                                        shape: RoundedRectangleBorder(
                                                                            side: const BorderSide(width: 1.09, color: Colors.white),
                                                                            borderRadius: BorderRadius.circular(10),
                                                                        ),
                                                                        shadows: const [
                                                                            BoxShadow(
                                                                                color: Color(0x3F000000),
                                                                                blurRadius: 4.37,
                                                                                offset: Offset(0, 5.46),
                                                                                spreadRadius: 0,
                                                                            )
                                                                        ],
                                                                    ),
                                                                    child: const Column(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children: [
                                                                            Text(
                                                                                '􀖧',
                                                                                style: TextStyle(
                                                                                    color: Colors.white,
                                                                                    fontSize: 30.64,
                                                                                    fontFamily: 'SF Pro Display',
                                                                                    fontWeight: FontWeight.w400,
                                                                                    height: 0,
                                                                                ),
                                                                            ),
                                                                            SizedBox(height: 8),
                                                                            Text(
                                                                                'Ausgabe speichern',
                                                                                style: TextStyle(
                                                                                    color: Colors.white,
                                                                                    fontSize: 17.47,
                                                                                    fontFamily: 'Roboto',
                                                                                    fontWeight: FontWeight.w900,
                                                                                    height: 0.08,
                                                                                    letterSpacing: 1.75,
                                                                                ),
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 293,
                child: SizedBox(
                    height: 60,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            SizedBox(
                                width: double.infinity,
                                height: 60,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                            width: double.infinity,
                                            height: 60,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    const SizedBox(
                                                        width: double.infinity,
                                                        child: Text(
                                                            'Wo eingekauft?',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15.28,
                                                                fontFamily: 'Roboto',
                                                                fontWeight: FontWeight.w500,
                                                                height: 0.09,
                                                            ),
                                                        ),
                                                    ),
                                                    Container(
                                                        width: double.infinity,
                                                        padding: const EdgeInsets.all(8),
                                                        decoration: ShapeDecoration(
                                                            color: Colors.black.withOpacity(0.10000000149011612),
                                                            shape: RoundedRectangleBorder(
                                                                side: BorderSide(
                                                                    width: 1.09,
                                                                    color: Colors.black.withOpacity(0.10000000149011612),
                                                                ),
                                                                borderRadius: BorderRadius.circular(10),
                                                            ),
                                                        ),
                                                        child: Row(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                                Text(
                                                                    'In welchem Geschäft?',
                                                                    style: TextStyle(
                                                                        color: Colors.black.withOpacity(0.5),
                                                                        fontSize: 15.28,
                                                                        fontFamily: 'Roboto',
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 0.09,
                                                                    ),
                                                                ),
                                                            ],
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 367,
                child: Container(
                    width: 361,
                    height: 60,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            const SizedBox(
                                width: double.infinity,
                                child: Text(
                                    'Was eingekauft?',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.28,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                    ),
                                ),
                            ),
                            SizedBox(
                                width: double.infinity,
                                height: 38,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                            width: double.infinity,
                                            padding: const EdgeInsets.all(8),
                                            decoration: ShapeDecoration(
                                                color: Colors.black.withOpacity(0.10000000149011612),
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1.09,
                                                        color: Colors.black.withOpacity(0.10000000149011612),
                                                    ),
                                                    borderRadius: BorderRadius.circular(10),
                                                ),
                                            ),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                    Text(
                                                        'Welcher Artikel?',
                                                        style: TextStyle(
                                                            color: Colors.black.withOpacity(0.5),
                                                            fontSize: 15.28,
                                                            fontFamily: 'Roboto',
                                                            fontWeight: FontWeight.w400,
                                                            height: 0.09,
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 136,
                top: 13,
                child: Container(
                    width: 121,
                    height: 121,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/121x121"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 749,
                child: Container(
                    width: 361,
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 3,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF001272),
                            ),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 677,
                child: Container(
                    width: 361,
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 3,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF001272),
                            ),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 277,
                child: Container(
                    width: 361,
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 3,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF001272),
                            ),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 150,
                child: SizedBox(
                    height: 38,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            SizedBox(
                                width: double.infinity,
                                height: 38,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                            width: double.infinity,
                                            decoration: const ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 3,
                                                        strokeAlign: BorderSide.strokeAlignCenter,
                                                        color: Color(0xFF001272),
                                                    ),
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 19),
                                        const SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                                'Quittung eingeben',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'SF Pro',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                ),
                                            ),
                                        ),
                                        const SizedBox(height: 19),
                                        Container(
                                            width: double.infinity,
                                            decoration: const ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 3,
                                                        strokeAlign: BorderSide.strokeAlignCenter,
                                                        color: Color(0xFF001272),
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            const Positioned(
                left: 16,
                top: 16,
                child: Text(
                    '􀄪',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 109,
                top: 753,
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                                'WorkBuddy - Version 0.001',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'SF Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 441,
                child: SizedBox(
                    width: 361,
                    height: 59,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                            SizedBox(
                                height: 58,
                                child: Stack(
                                    children: [
                                        const Positioned(
                                            left: 8,
                                            top: 0,
                                            child: Text(
                                                'Anzahl',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.28,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0.09,
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Container(
                                                width: 62,
                                                height: 38,
                                                padding: const EdgeInsets.all(8),
                                                decoration: ShapeDecoration(
                                                    color: const Color(0xFFD4D4D5),
                                                    shape: RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 1.09,
                                                            color: Colors.black.withOpacity(0.10000000149011612),
                                                        ),
                                                        borderRadius: BorderRadius.circular(10),
                                                    ),
                                                ),
                                                child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                        Row(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                                Text(
                                                                    'Anzahl',
                                                                    textAlign: TextAlign.center,
                                                                    style: TextStyle(
                                                                        color: Colors.black.withOpacity(0.5),
                                                                        fontSize: 15.28,
                                                                        fontFamily: 'Roboto',
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 0.09,
                                                                    ),
                                                                ),
                                                            ],
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                                width: 60,
                                height: 58,
                                child: Stack(
                                    children: [
                                        const Positioned(
                                            left: 6,
                                            top: 0,
                                            child: Text(
                                                'Einheit',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.28,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0.09,
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Container(
                                                width: 60,
                                                height: 38,
                                                padding: const EdgeInsets.only(top: 8, right: 1, bottom: 8),
                                                decoration: ShapeDecoration(
                                                    color: const Color(0xFFD4D4D5),
                                                    shape: RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 1.09,
                                                            color: Colors.black.withOpacity(0.10000000149011612),
                                                        ),
                                                        borderRadius: BorderRadius.circular(10),
                                                    ),
                                                ),
                                                child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                        Expanded(
                                                            child: SizedBox(
                                                                height: double.infinity,
                                                                child: Row(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                        Text(
                                                                            'Einheit',
                                                                            textAlign: TextAlign.center,
                                                                            style: TextStyle(
                                                                                color: Colors.black.withOpacity(0.5),
                                                                                fontSize: 15.28,
                                                                                fontFamily: 'Roboto',
                                                                                fontWeight: FontWeight.w400,
                                                                                height: 0.09,
                                                                            ),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                                height: 58,
                                child: Stack(
                                    children: [
                                        const Positioned(
                                            left: 16,
                                            top: 0,
                                            child: Text(
                                                'MwSt. €',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.28,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0.09,
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Container(
                                                width: 80,
                                                height: 38,
                                                padding: const EdgeInsets.all(8),
                                                decoration: ShapeDecoration(
                                                    color: const Color(0xFFD4D4D5),
                                                    shape: RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 1.09,
                                                            color: Colors.black.withOpacity(0.10000000149011612),
                                                        ),
                                                        borderRadius: BorderRadius.circular(10),
                                                    ),
                                                ),
                                                child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                        Text(
                                                            'MwSt. €',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.5),
                                                                fontSize: 15.28,
                                                                fontFamily: 'Roboto',
                                                                fontWeight: FontWeight.w400,
                                                                height: 0.09,
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                                width: 135,
                                height: 59,
                                child: Stack(
                                    children: [
                                        const Positioned(
                                            left: 69,
                                            top: 0,
                                            child: SizedBox(
                                                width: 58,
                                                child: Text(
                                                    'Preis €',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15.28,
                                                        fontFamily: 'Roboto',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0.09,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 21,
                                            child: Container(
                                                width: 135,
                                                height: 38,
                                                padding: const EdgeInsets.all(8),
                                                decoration: ShapeDecoration(
                                                    color: const Color(0xFFD4D4D5),
                                                    shape: RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 1.09,
                                                            color: Colors.black.withOpacity(0.10000000149011612),
                                                        ),
                                                        borderRadius: BorderRadius.circular(10),
                                                    ),
                                                ),
                                                child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                        Text(
                                                            'Preis  €',
                                                            style: TextStyle(
                                                                color: Colors.black.withOpacity(0.5),
                                                                fontSize: 15.28,
                                                                fontFamily: 'Roboto',
                                                                fontWeight: FontWeight.w400,
                                                                height: 0.09,
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ],
    ),
)






// Text(
//     '􀀀',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 27.23,
//         fontFamily: 'SF Pro Display',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Einnahme',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 20,
//         fontFamily: 'SF Pro',
//         fontWeight: FontWeight.w400,
//         height: 0.05,
//     ),
// )
// // ---
// Text(
//     '􀍷',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 27.23,
//         fontFamily: 'SF Pro Display',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Ausgabe',
//     style: TextStyle(
//         color: Color(0xFFFF0000),
//         fontSize: 20,
//         fontFamily: 'SF Pro',
//         fontWeight: FontWeight.w700,
//         height: 0.05,
//     ),
// )
// // ---
// Text(
//     'Warengruppe',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Welche Kategorie?',
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Wer hat eingekauft?',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Welcher Einkäufer?',
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     '􀖧',
//     style: TextStyle(
//         color: Colors.white,
//         fontSize: 30.64,
//         fontFamily: 'SF Pro Display',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Ausgabe speichern',
//     style: TextStyle(
//         color: Colors.white,
//         fontSize: 17.47,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w900,
//         height: 0.08,
//         letterSpacing: 1.75,
//     ),
// )
// // ---
// Text(
//     'Wo eingekauft?',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'In welchem Geschäft?',
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Was eingekauft?',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Welcher Artikel?',
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Quittung eingeben',
//     textAlign: TextAlign.center,
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 20,
//         fontFamily: 'SF Pro',
//         fontWeight: FontWeight.w510,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '􀄪',
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 40,
//         fontFamily: 'SF Pro Display',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'WorkBuddy - Version 0.001',
//     textAlign: TextAlign.center,
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 12,
//         fontFamily: 'SF Pro',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Anzahl',
//     textAlign: TextAlign.right,
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Anzahl',
//     textAlign: TextAlign.center,
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Einheit',
//     textAlign: TextAlign.right,
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Einheit',
//     textAlign: TextAlign.center,
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'MwSt. €',
//     textAlign: TextAlign.right,
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'MwSt. €',
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Preis €',
//     textAlign: TextAlign.right,
//     style: TextStyle(
//         color: Colors.black,
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w500,
//         height: 0.09,
//     ),
// )
// // ---
// Text(
//     'Preis  €',
//     style: TextStyle(
//         color: Colors.black.withOpacity(0.5),
//         fontSize: 15.28,
//         fontFamily: 'Roboto',
//         fontWeight: FontWeight.w400,
//         height: 0.09,
//     ),
// )



// -----------------------------------------------------------------------------
// ListView mit Auswahl der Aktionen einblenden
// -----------------------------------------------------------------------------
/*  */
// -----------------------------------------------------------------------------
          ],
        ),
      ),
// -----------------------------------------------------------------------------
// NavigationBar unten:
// -----------------------------------------------------------------------------
      bottomNavigationBar: const NavigationBarGreenNeon(),
    );
  }
}
