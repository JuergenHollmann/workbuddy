import 'dart:developer';
import 'package:workbuddy/shared/models/user_data.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
/*--------------------------------------- _users ---*/
// Man soll von außen keinen direkten Zugriff haben, deshalb der Unterstrich vor der Variablen.
  // final List<User> _users = [
  //   User(userName: "Jürgen", userPassword: "Pass"),
  // ];
  /*--------------------------------------- login ---*/
  @override
  /* (1) Die Logindaten eines Users überprüfen */
  Future<bool> login({
    required String userName,
    required String userPassword,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    String userName = "Jürgenx";
    String userPassword = "Pass";
    bool isLoginOK = false;
    if (userName == "Jürgenx" && userPassword == "Pass") {
      log("0023 - MockDatabase - login OK");
      isLoginOK = true;
    } else {
      log("0026 - MockDatabase - login NICHT OK");
      isLoginOK = false;
    }
    return isLoginOK;
  }

  @override
  Future<String?> createUser() {
    // todo: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<String> deleteUser() {
    // todo: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<List<UserData>> getAllUsers() {
    // todo: implement getAllUsers
    throw UnimplementedError();
  }

  @override
  Future<String> getUser() {
    // todo: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // todo: implement logout
    throw UnimplementedError();
  }

  @override
  Future<String> updateUser() {
    // todo: implement updateUser
    throw UnimplementedError();
  }
/* (2) Überprüfen ob der User schon angemeldet ist */
// for (User currentUser in _users) {
//   if (currentUser.userName == userName) {
//     if (currentUser.userPassword == userPassword) {
//       _currentUser = currentUser;
//       return Future.value(true);
//     } else {
//       return Future.value(false);
//     }
//   }
// }
// return Future.value(false);
// }

/*--------------------------------------- Logout ---*/
// @override
// Future<void> logout() {
//   _currentUser = null;
//   return Future.value();
// }
/*--------------------------------------- getCurrentUser ---*/
// // den aktuellen User aufrufen:
// @override
// Future<User?> getCurrentUser() {
//   return Future.delayed(
//     const Duration(seconds: 1),
//     () => _currentUser,
//   );
// }
/*--------------------------------------- _currentUser ---*/
// // Der aktuell eingeloggte User. Ist keiner eingeloggt, ist der Wert null.
// User? _currentUser;
/*--------------------------------------- getUser ---*/
  // @override
  // Future<String> getUser() async {
  //   await Future.delayed(const Duration(seconds: 1));
  //   User getUser = User(userName: userName);
  //   return null; //_users;
  // }

/*--------------------------------------- createUser ---*/
/* Einen User neu hinzufügen */
  // @override
  // Future<String?> createUser() async {
  //   await Future.delayed(const Duration(seconds: 1));
  //   User newUser = User(userName: userName, userPassword: userPassword);
  //   _users.add(newUser);
  //   return null;
  }

/*--------------------------------------- updateUser ---*/
  // @override
  // Future<String> updateUser() async {
  //   await Future.delayed(const Duration(seconds: 1));
  // }

/*--------------------------------------- deleteUser ---*/
  // @override
  // Future<String> deleteUser() async {
  //   await Future.delayed(const Duration(seconds: 1));
  // }

/*--------------------------------------- getAllUsers ---*/
// Alle vorhandenen User zurückgeben.
  // @override
  // // Future<List<User>> getAllUsers() async {//O
  //   Future<List<UserData>> getAllUsers() async {

  //   await Future.delayed(const Duration(seconds: 1));
  //   return Future.value(_users);
  // }

/*--------------------------------------- logout ---*/
  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(seconds: 1));
  }

/*--------------------------------------- duplicateUser ---*/
// // Einen User mit createUser zur App hinzufügen.
// // Jeden User darf es nur einmal geben.
// // Das hier überprüfen und "false" zurückgeben, falls es den User schon gibt.
//   @override
//   Future<bool> duplicateUser(String newUserName, String newPassword) async {
//     // Überprüfen, ob es den User schon gibt.
//     for (User user in _users) {
//       if (newUserName == user.userName) {
//         return Future.value(false);
//       }
//     }
//     User newUser = User(userName: newUserName, userPassword: newPassword);
//     _users.add(newUser);
//     return Future.delayed(const Duration(seconds: 1), () => true);
//   }
/*--------------------------------------- *** ---*/
