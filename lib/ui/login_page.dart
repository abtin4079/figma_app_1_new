import 'package:flutter/material.dart';
import 'package:test1/ui/forgot_password.dart';
import '../colors.dart';
import '../net/flutterfire.dart';
import 'create_account.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthService authService = AuthService();

  final bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image7.png'),
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
                    "Log in",
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
                    "or log in with email",
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
                    controller: authService.email,
                    decoration: const InputDecoration(
                      labelText: "  Email",
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
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    controller: authService.password,
                    decoration: InputDecoration(
                      labelText: "  Password",
                      labelStyle: const TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      suffixIcon: IconButton(
                        icon: Icon(_secureText
                            ? Icons.remove_red_eye
                            : Icons.security),
                        onPressed: () {
                          setState(
                            () {
                              _secureText != _secureText;
                            },
                          );
                        },
                      ),
                    ),
                    obscureText: _secureText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 229),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ),
                      );
                    },
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      if (authService.email != "" &&
                          authService.password != "") {
                        authService.LoginUser();
                      }
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white24,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccount(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
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
