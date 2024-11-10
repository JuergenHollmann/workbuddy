abstract class DatabaseRepository {

  /*--------------------------------------- Login ---*/
  /* Den User einloggen */
  Future<bool> login({
    required String userName,
    required String userPassword,
  });

  // /*--------------------------------------- Logout ---*/
  // Future<void> logout();

  // /*--------------------------------------- getUser ---*/
  // /* Einen User aufrufen */
  // Falls kein User eingeloggt ist, wird "null" zurückgegeben. */
  // Future<User?> getUser();

  // /*--------------------------------------- createUser ---*/
  //   /* Einen User neu hinzufügen */
  // Gibt "false" zurück, wenn es den User schon gibt */
  // Future<bool> createUser(String userName, String userPassword);

  // /*--------------------------------------- updateUser ---*/
  // /* Die Daten eines Users ändern */
  // // Future<void> updateUser(User user);

  // /*--------------------------------------- getAllUsers ---*/
  // /* Alle vorhandenen User zurückgeben */
  // // Future<List<User>> getAllUsers();

  // /*--------------------------------------- deleteUser ---*/
  // /* Einen User löschen */
  // // Future<List<User>> deleteUser();

  /*--------------------------------------- *** ---*/
}
