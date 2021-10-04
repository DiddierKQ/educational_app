import 'package:educational_app/screens/professors/login_screen.dart';
import 'package:educational_app/screens/students/login_screen.dart';
import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgroundColor,
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: CustomColors.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                  flex: 16,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Card(
                        margin: const EdgeInsets.only(
                          top: 50,
                          left: 16,
                          right: 16,
                        ),
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 16.0,
                              ),
                              child: const Text(
                                "WELCOME",
                                style: TextStyle(
                                  color: CustomColors.secondaryColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                            Container(
                              padding: const EdgeInsets.all(40.0),
                              child: const Text(
                                "To continue, please select the kind of user you are.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 24),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Get.to(() => const LoginUserScreen());
                                    },
                                    child: const Text(
                                      'I am a student',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.to(() => const LoginProfessor());
                                    },
                                    child: const Text(
                                      'I am a professor',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  flex: 75,
                ),
                Expanded(
                  child: Container(),
                  flex: 16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
