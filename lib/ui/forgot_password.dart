import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/colors.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image7.png'),
            fit: BoxFit.cover,
          ),
        ),
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 90, top: 88),
                  width: MediaQuery.of(context).size.width,
                  height: 34,
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 50,
                  ),
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage("images/3.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Image(
                          image: AssetImage("images/2.png"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 75, top: 26),
                        child: Image(
                          image: AssetImage("images/1.png"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 127, top: 75),
                        child: Image(
                          image: AssetImage("images/key.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Container(
                    child: Text(
                      "Enter your email below to recieve your ",
                      style: TextStyle(
                        color: Colors.white38,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    child: Text(
                      "password reset instructions",
                      style: TextStyle(
                        color: Colors.white38,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      labelText: "   your Email",
                      labelStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
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
                    onPressed: () {},
                    child: const Text(
                      "Send password",
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
                  height: 30,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "remember the password",
                      style: TextStyle(
                        color: Colors.white38,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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
