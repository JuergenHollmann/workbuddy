/* 
Momentan existieren 2 "class User" Modelle für userName und UserPasswort:
- features/authentication/schema/user.dart';
- shared/data/user.dart'; <-- diese wird benutzt --
*/

import 'dart:developer';

import 'package:workbuddy/shared/repositories/database_repository.dart';
import 'package:workbuddy/shared/repositories/firebase_auth_repository.dart';

class AuthRepository extends DatabaseRepository {
  final authInstance = FirebaseAuthRepository.instance;
  Stream<User?> get onAuthStateChanged => authInstance.authStateChanges();

  @override
  /*--------------------------------------- Login ---*/
  Future<bool> login({required String eMail, required String password}) async {
    try {
      await authInstance.signInWithEmailAndPassword(
        email: eMail, // userName
        password: password, // userPassword
      );
      return true;
    } catch (e) {
      log("$e");
      return false;
    }
  }
  /*--------------------------------------- Logout ---*/
  @override
  Future<void> logoutUser() async {
    try {
      await authInstance.signOut();
    } catch (e) {
      log("$e");
    }
  }


  // /*--------------------------------------- authStateChanges ---*/
  // // Future<String> authStateChanges({

  // // });
  // /*--------------------------------------- getUser ---*/
  // /* Einen User aufrufen */
  // /* Falls kein User eingeloggt ist, wird "null" zurückgegeben. */
  // Future<String> getUser();
  // /*--------------------------------------- createUser ---*/
  // /* Einen User neu hinzufügen */
  // Future<String?> createUser();
  // /*--------------------------------------- updateUser ---*/
  // /* Die Daten eines Users ändern */
  // Future<String> updateUser();
  // /*--------------------------------------- deleteUser ---*/
  // /* Einen User löschen */
  // Future<String> deleteUser();
  // /*--------------------------------------- getAllUsers ---*/
  // // /* Alle vorhandenen User zurückgeben */
  // // Future<List<User>> getAllUsers();
  // /*--------------------------------------- editUser ---*/
  /// Die Daten eines Users anpassen (editUser)
  // Future<void> editUser(UserData user);
  /*--------------------------------------- getCurrentUser ---*/
  /// Aktuell eingeloggten User zurückgeben.
  /// Falls keiner eingeloggt ist, wird null zurückgegeben.
  // Future<UserData?> getCurrentUser();
  /*--------------------------------------- *** ---*/
}
