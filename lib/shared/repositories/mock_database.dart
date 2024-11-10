// import 'database_repository.dart';

// import 'package:workbuddy/shared/repositories/database_repository.dart';

// class MockDatabase implements DatabaseRepository {

//   /*--------------------------------------- Login ---*/
//   /* Die Logindaten eines Users überprüfen */
//   @override
//   Future<bool> login({
//     required String userName,
//     required String userPassword,
//   }) {

// //    String userName = "Jürgen";
// //    String userPassword = "Pass";
// //     if (userName = "Jürgen" && userPassword = "Pass"){
// // result = true;

// //     }else{
// //       result = false;
// //     }
// // return result;
//    }
    
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

  // /*--------------------------------------- Logout ---*/
  // @override
  // Future<void> logout() {
  //   _currentUser = null;
  //   return Future.value();
  // }

  /*--------------------------------------- _currentUser ---*/
  // // Der aktuell eingeloggte User. Ist keiner eingeloggt, ist der Wert null.
  // User? _currentUser;

  /*--------------------------------------- _users ---*/
  // // Der Programmierer soll von außen keinen direkten Zugriff haben.
  // final List<User> _users = [
  //   User(userName: "Jürgen", userPassword: "Pass"),
  // ];

  /*--------------------------------------- getCurrentUser ---*/
  // @override
  // Future<User?> getCurrentUser() {
  //   return Future.delayed(
  //     const Duration(milliseconds: 1234),
  //     () => _currentUser,
  //   );
  // }

  /*--------------------------------------- addUser ---*/
  // // Einen User zur App hinzufügen (registieren) (addUser / createUser)
  // // Jeden User darf es nur einmal geben. Das hier überprüfen und "false"
  // // zurückgeben, falls es den User schon gibt.
  // @override
  // Future<bool> addUser(String newUserName, String newPassword) {
  //   // Überprüfen, ob es den User schon gibt.
  //   for (User user in _users) {
  //     if (newUserName == user.userName) {
  //       return Future.value(false);
  //     }
  //   }
  //   User newUser = User(userName: newUserName, userPassword: newPassword);
  //   _users.add(newUser);

  //   return Future.delayed(const Duration(seconds: 1), () => true);
  // }

  /*--------------------------------------- editUser ---*/
  //   // Die Daten eines Users anpassen (editUser)
  //   @override
  //   Future<void> editUser(User user) {
  //     // todo: implement editUser
  //     throw UnimplementedError();
  //   }
  // }

  /*--------------------------------------- getAllUsers ---*/
  // // Alle vorhandenen User zurückgeben.
  // @override
  // Future<List<User>> getAllUsers() {
  //   return Future.value(_users);
  // }

  /*--------------------------------------- *** ---*/
// }