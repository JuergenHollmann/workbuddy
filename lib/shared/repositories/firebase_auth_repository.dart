// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:workbuddy/shared/models/user_data.dart';
// import 'package:workbuddy/shared/repositories/auth_repository.dart';

// class FirebaseAuthRepository implements AuthRepository {
//   FirebaseAuth auth = FirebaseAuth.instance;

//   @override
//   Future<bool> addUser(String userName, String password) {
//     // todo: implement addUser
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> editUser(UserData user) {
//     // todo: implement editUser
//     throw UnimplementedError();
//   }

//   @override
//   Future<List<UserData>> getAllUsers() {
//     // todo: implement getAllUsers
//     throw UnimplementedError();
//   }

//   @override
//   Future<UserData?> getCurrentUser() {
//     // todo: implement getCurrentUser
//     throw UnimplementedError();
//   }

//   @override
//   Future<bool> login({
//     required String userName,
//     required String password,
//   }) async {
//     try {
//       final UserCredential credential = await auth.signInWithEmailAndPassword(
//         email: userName,
//         password: password,
//       );
//     } catch (_) {
//       return false;
//     }

//     return Future.value(true);
//   }

//   @override
//   Future<void> logout() {
//     // todo: implement logout
//     throw UnimplementedError();
//   }
  
//   @override
//   Future<String?> createUser() {
//     // todo: implement createUser
//     throw UnimplementedError();
//   }
  
//   @override
//   Future<String> deleteUser() {
//     // todo: implement deleteUser
//     throw UnimplementedError();
//   }
  
//   @override
//   Future<String> getUser() {
//     // todo: implement getUser
//     throw UnimplementedError();
//   }
  
//   @override
//   Future<String> updateUser() {
//     // todo: implement updateUser
//     throw UnimplementedError();
//   }
// }
