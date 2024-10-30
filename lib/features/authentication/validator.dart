class Validator {
/*--------------------------------- isValidUsername ---*/
  static String? isValidUsername(String? value) {
    // Der Benutzername darf nicht leer sein:
    if (value == null || value.isEmpty) {
      return "Bitte den Benutzernamen angeben!";
    }
    if (value.length < 3) {
      return "... muss mindestens 3 Zeichen haben!";
    }
    if (value.length > 15) {
      return "... darf max. 15 Zeichen haben!";
    }
    // wenn null zurückgegeben wird, ist alles OK hier:
    return null;
  }

  /*--------------------------------- isValidEmail ---*/
  static String? isValidEmail(String? value) {
    // Die E-Mail darf nicht leer sein:
    if (value == null || value.isEmpty) {
      return "Die E-Mail muss angegeben werden! ";
    }
    if (value.length < 5) {
      return "Die E-Mail benötigt min. 5 Zeichen!";
    }
    if (!value.contains("@")) {
      return "Die E-Mail muss ein \" @ \"enthalten!";
    }
    if (!value.contains(".")) {
      return "Die E-Mail muss einen \" . \" enthalten!";
    }
    // wenn null zurückgegeben wird, ist alles OK hier:
    return null;
  }

  /*--------------------------------- isValidPassword ---*/
  static String? isValidPassword(String? value) {
    // Das Passwort darf nicht null oder leer sein.
    if (value == null || value.isEmpty) {
      return "Bitte ein Password angeben!";
    }
    if (value.length < 4) {
      return "... muss mindestens 4 Zeichen haben!";
    }
    // if (value == value) {
    //   return "Die Paßwörter sind NICHT gleich!"; // funzt so nicht! todo
    // }
    if (!value.contains("!")) {
      return "... muss \" !§%&/()=? \" enthalten!";
    }
    // // Password soll mindestens ein Sonderzeichen enthalten (!§$%&/()=?)
    // if (value.)

    return null;
  }
}


    // // Der Benutzername darf nicht leer sein:
    // if (value == null || value.isEmpty) {
    //   return const Text(
    //     "Bitte einen Benutzernamen angeben!",
    //     style: TextStyle(
    //       fontSize: 22,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.red,
    //     ),
    //   );
    // }

// /*--- validator ---*/
// validator: (userPassword) {
//   // Password wurde nicht ausgefüllt:
//   if (userPassword == null) {
//     log("Password wurde nicht ausgefüllt");
//     return "Bitte Passwort angeben";
//   } else if (userPassword == "üpoiuztrewq") {
//     log("Password ist korrekt");
//     return "Passwort ist korrekt";
//   }

//   //Passwort und Benutzername sind beide korrekt:
//   return null;
// },

// /*--- validator ---*/
// validator: (userPassword) {
//   // Password wurde nicht ausgefüllt:
//   if (userPassword == null) {
//     // return "Bitte Passwort angeben";
//     log("Password wurde nicht ausgefüllt");
//   } else if (userPassword == "üpoiuztrewq") {
//     // return "Passwort ist korrekt";
//     log("Password ist korrekt");
//   }
//   // Passwort und Benutzername sind beide korrekt:
//   return null;
// },
