import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionWidget extends StatelessWidget {
  //const SessionWidget({Key? key}) : super(key: key);

  String name;
  String timeBegins;
  String timeEnds;

  SessionWidget({
    Key? key,
    required this.name,
    required this.timeBegins,
    required this.timeEnds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
      ),
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 12.0,
        bottom: 12.0,
      ),
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
      child: ListTile(
        onTap: () {
          
        },
        leading: Container(
          height: double.infinity,
          width: 12,
          decoration: BoxDecoration(
            color: CustomColors.mainColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Container(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            timeBegins + ' - ' + timeEnds,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        trailing: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: CustomColors.mainColor,
          ),
          onPressed: () {           
          },
          child: const Text(
            'Join',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
