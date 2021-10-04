import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main_screen.dart';

class SignInProfessorScreen extends StatefulWidget {
  const SignInProfessorScreen({Key? key}) : super(key: key);

  @override
  _SignInProfessorScreenState createState() => _SignInProfessorScreenState();
}

class _SignInProfessorScreenState extends State<SignInProfessorScreen> {
  
  // Textfield values
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _lastnameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  final TextEditingController _confirmPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.mainColor,
        title: const Text("Create a new account"),
        elevation: 0,
      ),
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
                      width: 200,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(bottom: 28),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      controller: _nameCtrl,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomColors.mainColor, width: 2.0),
                        ),
                        label: Text(
                          "Name",
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
                    child: TextField(
                      controller: _lastnameCtrl,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: CustomColors.mainColor, width: 2.0),
                        ),
                        label: Text(
                          "Last name",
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
                    child: TextField(
                      controller: _emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
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
                    child: TextField(
                      controller: _passwordCtrl,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors.mainColor,
                            width: 2.0,
                          ),
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
                    child: TextField(
                      controller: _confirmPasswordCtrl,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors.mainColor,
                            width: 2.0,
                          ),
                        ),
                        label: Text(
                          "Confirm password",
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
                        Get.to(() => MainScreen(isStudent: false));
                      },
                      child: const Text('Create account',
                          style: TextStyle(color: Colors.white, fontSize: 24)),
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
