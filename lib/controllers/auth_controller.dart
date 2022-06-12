import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthController {
  Future<String> signUpUser(String email, String password) async {
    AuthController auth = AuthController();
    String res = 'Some error Occured';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        UserCredential cred = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        FirebaseFirestore.instance
            .collection('users')
            .doc(cred.user!.uid)
            .set({'email': email});
        print(cred.user!.email);
        res = 'Success';
      } else {
        res = 'filed must not be empty';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  loginUser(String email, String password) async {
    String res = 'Some errore Occured';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        res = 'Success';
        res = 'You are now signed in';
      } else {
        res = 'fileds must not be empty';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
