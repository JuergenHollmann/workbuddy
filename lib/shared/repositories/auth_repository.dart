/* 
Momentan existieren 2 "class User" Modelle für userName und UserPasswort:
- features/authentication/schema/user.dart';
- shared/data/user.dart'; <-- diese wird benutzt --
*/


abstract class AuthRepository {
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
  // /* Alle vorhandenen User zurückgeben */
  // Future<List<User>> getAllUsers();
  /*--------------------------------------- Logout ---*/
  Future<void> logout();
  /*--------------------------------------- editUser ---*/
  /// Die Daten eines Users anpassen (editUser)
  // Future<void> editUser(UserData user);
  /*--------------------------------------- getCurrentUser ---*/
  /// Aktuell eingeloggten User zurückgeben.
  /// Falls keiner eingeloggt ist, wird null zurückgegeben.
  // Future<UserData?> getCurrentUser();
  /*--------------------------------------- *** ---*/
}
