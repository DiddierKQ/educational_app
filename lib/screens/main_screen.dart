import 'package:educational_app/screens/profile_screen.dart';
import 'package:educational_app/screens/students/announcements_screen.dart';
import 'package:educational_app/screens/students/courses_screen.dart';
import 'package:educational_app/screens/students/sessions_screen.dart';
import 'package:educational_app/utils/colors_utils.dart';
import 'package:educational_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  //const MainScreen({Key? key}) : super(key: key);

  bool isStudent;

  MainScreen({
    Key? key,
    required this.isStudent,
  }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _index = 0;
  final _studentScreens = const [
    SessionsScreen(),
    AnnouncementsScreen(),
    CoursesScreen(),
    ProfileScreen(),
  ];

  final _professorScreens = const [
    Text("hello"),
  ];

  _changeIndex(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: "Home"),
      body: (widget.isStudent)
          ? _studentScreens[_index] // Display student screens
          : _professorScreens[_index], // Display professor screens
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: CustomColors.mainColor,
        onTap: _changeIndex,
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.calendar_today,
              size: 28,
            ),
            label: "Sessions",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.announcement,
              size: 28,
            ),
            label: "Announcements",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              size: 28,
            ),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              size: 28,
            ),
            label: "Account",
          ),
        ],
        unselectedLabelStyle: const TextStyle(fontSize: 20),
        selectedLabelStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
      ),
    );
  }
}
