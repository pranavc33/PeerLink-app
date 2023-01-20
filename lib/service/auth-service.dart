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
        return true;
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

//signout

}
