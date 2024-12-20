/* 
Momentan existieren 2 "class User" Modelle für userName und UserPasswort:
- features/authentication/schema/user.dart';
- shared/data/user.dart'; <-- diese wird benutzt --
*/

//import 'package:workbuddy/shared/data/user.dart';
// import 'package:workbuddy/features/authentication/schema/user.dart';
import 'package:workbuddy/shared/data/user_data.dart';

abstract class DatabaseRepository {
  /*--------------------------------------- Login ---*/
  /* Den User einloggen */
  Future<bool> login({
    required String eMail,// userName,
    required String password, // userPassword,
  });
  /*--------------------------------------- getCurrentUser ---*/
  /* Einen User aufrufen */
  /* Falls kein User eingeloggt ist, wird "null" zurückgegeben. */
  Future<UserData?> getCurrentUser();
  /*--------------------------------------- addUser ---*/
  /* Einen User neu hinzufügen */
  // Future<String?> createUser();
    Future<bool> addUser(String newUserName, String newPassword);
  /*--------------------------------------- editUser ---*/
  /* Die Daten eines Users ändern */
  // Future<void> updateUser(User user);
  // Future<String> updateUser();
    Future<void> editUser(User user);
  /*--------------------------------------- deleteUser ---*/
  /* Einen User löschen */
  // Future<String> deleteUser();
  // Future<List<User>> deleteUser();
  /*--------------------------------------- getAllUsers ---*/
  /* Alle vorhandenen User zurückgeben */
  //Future<List<User>> getAllUsers();//O
    // Future<List<UserData>> getAllUsers();
        Future<List<User>> getAllUsers();
  /*--------------------------------------- Logout ---*/
    Future<void> logoutUser();
  /*--------------------------------------- *** ---*/
}
