import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthClient {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future loginWithEmail(String email, String password) async {
    print("Email:::::: $email");
    print("password:::::: $password");

    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User user = _auth.currentUser;
      return user != null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future signUpWithEmail(String name, String email, String senha) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      User user = _auth.currentUser;

      await saveUserData(name, user);

      return user != null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  //Future<User> loginWithGoogle() {}
  //Future<void> logOut() {}
  //Future<User> signUpWithGoole() {}

  Future<Null> saveUserData(
    String name,
    User firebaseUser,
  ) async {
    FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser.uid)
        .set({'name': name, 'email': firebaseUser.email});
  }
}
