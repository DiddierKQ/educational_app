import 'package:educational_app/screens/professors/add_announcement_screen.dart';
import 'package:educational_app/utils/colors_utils.dart';
import 'package:educational_app/widgets/announcement_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnnouncementsScreen extends StatelessWidget {
  //const AnnouncementsScreen({ Key? key }) : super(key: key);

  bool isStudent;

  AnnouncementsScreen({
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
                AnnouncementWidget(
                    name: "Day off", author: "Rafael", date: "01/10/2021"),
              ],
            ),
          ),
        );
      }),
      floatingActionButton:  Visibility(
        child: FloatingActionButton(
          backgroundColor: CustomColors.mainColor,
          foregroundColor: Colors.white,
          onPressed: () {
            Get.to(() => const AddAnnouncementProfessorScreen());
          },
          child: const Icon(Icons.add),             
        ),
        visible: isStudent ? false : true,  
      ),
    );
  }
}
