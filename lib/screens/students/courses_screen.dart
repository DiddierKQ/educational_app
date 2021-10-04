import 'package:educational_app/widgets/course_widget.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            CourseWidget(name: "Flutter", description: "Course to leatn flutter and moble development", professor: "Sundaravel", joinedDate: "06/09/2021"),
          ],
        ),
      ),
    );
  }
}