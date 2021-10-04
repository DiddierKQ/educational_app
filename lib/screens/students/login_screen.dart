import 'package:educational_app/screens/main_screen.dart';
import 'package:educational_app/screens/students/signin_screen.dart';
import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginUserScreen extends StatefulWidget {
  const LoginUserScreen({Key? key}) : super(key: key);

  @override
  _LoginUserScreenState createState() => _LoginUserScreenState();
}

class _LoginUserScreenState extends State<LoginUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgroundColor,     
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          ); // Function to hide the keyboard once you clic outside the textfield
        },
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(32.0),
            padding: const EdgeInsets.all(16.0),
            height: 820,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(40),
                    child: Image.asset(
                      "assets/itk_logo.png",
                      width: 240,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(bottom: 28),
                    child: const Text(
                      "Sign In as a student",
                      style: TextStyle(
                        color: CustomColors.secondaryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomColors.mainColor, width: 2.0),
                        ),
                        label: Text(
                          "Email address",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: const TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomColors.mainColor, width: 2.0),
                        ),
                        label: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: CustomColors.mainColor,
                        minimumSize: const Size(double.infinity, 60),
                      ),
                      onPressed: () {
                        Get.to(() => MainScreen(isStudent: true));
                      },
                      child: const Text('Log in',
                          style: TextStyle(color: Colors.white, fontSize: 24)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      child: const Text(
                        "Create a new account",
                        style: TextStyle(
                          fontSize: 20,
                          color: CustomColors.mainColor,
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => const SignInStudent());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
