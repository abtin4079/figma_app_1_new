import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();
  TextEditingController username = TextEditingController();

  void LoginUser() async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((value) => {
                print("User is logged in"),
              });
    } catch (e) {
      print(e);
    }
  }

  void RegisterUser() async {
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((value) => {
                print("User is registered"),
              });
    } catch (e) {
      print(e);
    }
  }
}
