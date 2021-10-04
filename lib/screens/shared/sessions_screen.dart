import 'package:educational_app/screens/professors/add_session_screen.dart';
import 'package:educational_app/utils/colors_utils.dart';
import 'package:educational_app/widgets/session_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SessionsScreen extends StatelessWidget {
  //const SessionsScreen({Key? key}) : super(key: key);

  bool isStudent;

  SessionsScreen({
    Key? key,
    this.isStudent = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Center(
          child: Container(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 16.0,
              right: 16.0,
            ),
            child: ListView(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 36),
                      children: [
                        TextSpan(
                          text: '04/10/2021 ',
                          style: TextStyle(
                            color: CustomColors.secondaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '(Today)',
                          style: TextStyle(
                            color: CustomColors.secondaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SessionWidget(
                  name: "Flutter session week 5",
                  timeBegins: "7:30",
                  timeEnds: "8:30",
                  isStudent: isStudent,
                ),
                SessionWidget(
                  name: "BSD course: week 5",
                  timeBegins: "8:30",
                  timeEnds: "10:30",
                  isStudent: isStudent,
                ),
              ],
            ),
          ),
        );
      }),
      floatingActionButton: Visibility(
        child: FloatingActionButton(
          backgroundColor: CustomColors.mainColor,
          foregroundColor: Colors.white,
          onPressed: () {
            Get.to(()=> const AddSessionProfessorScreen());
          },
          child: const Icon(Icons.add),
        ),
        visible: isStudent ? false : true,
      ),
    );
  }
}
