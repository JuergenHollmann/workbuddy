/* 
Momentan existieren 2 "class User" Modelle für userName und UserPasswort:
- features/authentication/schema/user.dart';
- shared/data/user.dart'; <-- diese wird benutzt --
*/

//import 'package:workbuddy/shared/data/user.dart';
import 'package:workbuddy/shared/models/user_data.dart';

abstract class DatabaseRepository {
  /*--------------------------------------- Login ---*/
  /* Den User einloggen */
  Future<bool> login({
    required String userName,
    required String userPassword,
  });
  /*--------------------------------------- getUser ---*/
  /* Einen User aufrufen */
  /* Falls kein User eingeloggt ist, wird "null" zurückgegeben. */
  Future<String> getUser();
  /*--------------------------------------- createUser ---*/
  /* Einen User neu hinzufügen */
  Future<String?> createUser();
  /*--------------------------------------- updateUser ---*/
  /* Die Daten eines Users ändern */
  Future<String> updateUser();
  /*--------------------------------------- deleteUser ---*/
  /* Einen User löschen */
  Future<String> deleteUser();
  /*--------------------------------------- getAllUsers ---*/
  /* Alle vorhandenen User zurückgeben */
  //Future<List<User>> getAllUsers();//O
    Future<List<UserData>> getAllUsers();

  /*--------------------------------------- Logout ---*/
  Future<void> logout();

  /*--------------------------------------- *** ---*/

  /*--------------------------------------- *** ---*/
  // alte Version
  // /*--------------------------------------- Login ---*/
  // /* Den User einloggen */
  // Future<bool> login({
  //   required String userName,
  //   required String userPassword,
  // });

  // /*--------------------------------------- Logout ---*/
  // Future<void> logout();

  // /*--------------------------------------- getUser ---*/
  // /* Einen User aufrufen */
  // /* Falls kein User eingeloggt ist, wird "null" zurückgegeben. */
  // Future<User?> getUser();

  // /*--------------------------------------- createUser ---*/
  // /* Einen User neu hinzufügen */
  // /* Gibt "false" zurück, wenn es den User schon gibt */
  // Future<bool> createUser(String userName, String userPassword);

  // /*--------------------------------------- updateUser ---*/
  // /* Die Daten eines Users ändern */
  // Future<void> updateUser(User user);

  // /*--------------------------------------- getAllUsers ---*/
  // /* Alle vorhandenen User zurückgeben */
  // Future<List<User>> getAllUsers();

  // /*--------------------------------------- deleteUser ---*/
  // /* Einen User löschen */
  // Future<List<User>> deleteUser();
  // /*--------------------------------------- *** ---*/
}
