import 'package:chat_firebase/service/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth fireBaseAuth = FirebaseAuth.instance;

//login

// register

  Future registerUserWithEmailandPassword(
      String fullName, String email, String password) async {
    try {
      var firebaseAuth;
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
//call database service to update user data

        await DatabaseService(uid: user.uid).updateUserData(fullName, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      print(e);
      return e.message;
    }
  }

//signout

}
