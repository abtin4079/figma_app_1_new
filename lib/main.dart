import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test1/colors.dart';
import 'package:test1/net/flutterfire.dart';
import 'package:test1/ui/login_page.dart';
import 'colors.dart';
import 'inside/starting_page.dart';
import 'ui/home_page.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: GetStarted(),
  ));
}

class GetStarted extends StatelessWidget {
  AuthService authService = AuthService();

  GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image6.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        const Image(
                          image: AssetImage('images/bg.png'),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            top: 15,
                          ),
                          child: const Image(
                            image: AssetImage('images/map.png'),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Travel Guide",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    const Text(
                      "Find your best place for...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 210,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.blue),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StartingPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
