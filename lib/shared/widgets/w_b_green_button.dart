import 'package:flutter/material.dart';
import 'package:workbuddy/config/wb_colors.dart';

class WBGreenButton extends StatelessWidget {
  const WBGreenButton({super.key, required onTap});

  @override
  Widget build(BuildContext context) {
    // Button erstellen:
    return Container(
      width: 398,
      height: 60,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(4, 4),
            spreadRadius: 0,
          )
        ],
        color: wbColorButtonGreen,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          /*--------------------------------------- Button enablen todo ---*/
//              _isButtonEnabled? null : "";

//              ElevatedButton(
//   onPressed: _isDisable? null : callBackFunction,
//   child: Text("submit"),
//   style: ButtonStyle(),
// );
// when you want to disable button, call

// setState(() {
//   _isDisable = true;
// });
// when you want to enable button, call

// setState(() {
//   _isDisable = false;
// });

          //   /*--------------------------------------- Login ---*/
          //         /* Überprüfe Benutzer und Passwort */
          //   String checkUserName = "Jürgen";
          //   String checkUserPassword = "Pass";
          //   bool result = false;
          //   if (checkUserName == "Jürgen" && checkUserPassword == "Pass") {
          //     result = true;
          //   } else {
          //     result = false;
          //   }
          //   return result;
          // }

// User.checkLogin;

          // //   /*--------------------------------------- *** ---*/
          // log("Wechsle zur Seite 2 = SelectionPage");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const SelectionPage(),
          //   ),
          // );
        },
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.input_outlined,
                    color: Colors.white,
                    size: 40,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),

                // Expanded(flex: 1, child:SizedBox.shrink( //todo (siehe 434/F4)
                Expanded(
                  //flex: 1,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 48,
                      ), // dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist )
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                          fontSize: 32,
                          // fontFamily: 'Roboto' oder 'SF Pro Display', soll ich die verwenden? todo?
                          fontWeight: FontWeight.w900,
                          // height: 1, // nur wenn der Text innerhalb des Buttons verschoben werden soll
                          letterSpacing: 2, // Zwischenraum der Buchtstaben
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
