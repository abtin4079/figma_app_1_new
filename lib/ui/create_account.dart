import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test1/net/flutterfire.dart';
import 'package:test1/ui/login_page.dart';
import '../colors.dart';

class CreateAccount extends StatefulWidget {
   CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
   AuthService authService = AuthService();
   CollectionReference  kirkhar =  FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/image7.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 88,
                  ),
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 48,
                        margin: const EdgeInsets.only(
                          left: 30,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.FaceBookButton,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: const Image(
                                image: AssetImage('images/facebook.png'),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: const Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 30),
                        width: 157,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.TwitterButton,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: const Image(
                                image: AssetImage('images/twitter.png'),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: const Text(
                                "Twitter",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Container(
                  child: const Text(
                    "or sign up with email",
                    style: TextStyle(
                      color: Colors.white24,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    controller: authService.username,
                    decoration: const InputDecoration(
                      labelText: "  Username",
                      labelStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    controller: authService.email,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      labelText: "  Your Email",
                      labelStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    controller: authService.password,
                    decoration: const InputDecoration(
                      labelText: "  Password",
                      labelStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    controller: authService.confirm_password,
                    decoration: const InputDecoration(
                      labelText: "  Confirm Password",
                      labelStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.homePageLogo,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if(authService.email != "" && authService.password.text == authService.confirm_password.text && authService.password != ""){
                        authService.RegisterUser();
                      }
                      Map <String, dynamic> data = {"name":authService.username.text};
                      kirkhar.add(data);
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "already have an acount?",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Log in",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: AppColor.homePageLogo,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
