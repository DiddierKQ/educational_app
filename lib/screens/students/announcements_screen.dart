import 'package:educational_app/widgets/announcement_widget.dart';
import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({ Key? key }) : super(key: key);

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
            AnnouncementWidget(name: "Day off", author: "Rafael", date: "01/10/2021"),
          ],
        ),
      ),     
    );
  }
}