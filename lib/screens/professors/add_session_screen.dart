import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class AddSessionProfessorScreen extends StatefulWidget {
  const AddSessionProfessorScreen({ Key? key }) : super(key: key);

  @override
  _AddSessionProfessorScreenState createState() => _AddSessionProfessorScreenState();
}

class _AddSessionProfessorScreenState extends State<AddSessionProfessorScreen> {

  // Textfield values
  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _descriptionCtrl = TextEditingController();
  final TextEditingController _dateCtrl = TextEditingController();
  final TextEditingController _timeCtrl = TextEditingController();
  final TextEditingController _participantsCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.mainColor,
        title: const Text("Create a new session"),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          ); // Function to hide the keyboard once you clic outside the textfield
        },
        child: Container(
          margin: const EdgeInsets.all(32.0),
          padding: const EdgeInsets.all(16.0),
          height: 720,
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
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(bottom: 28),
                  child: const Text(
                    "Create a new session",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    controller: _titleCtrl,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: CustomColors.mainColor, width: 2.0),
                      ),
                      label: Text(
                        "Title",
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
                    maxLines: 3,
                    keyboardType: TextInputType.text,                      
                    controller: _descriptionCtrl,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: CustomColors.mainColor, width: 2.0),
                      ),
                      label: Text(
                        "Description",
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
                    controller: _dateCtrl,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: CustomColors.mainColor, width: 2.0),
                      ),
                      label: Text(
                        "Date",
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
                    controller: _timeCtrl,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: CustomColors.mainColor,
                          width: 2.0,
                        ),
                      ),
                      label: Text(
                        "Time",
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
                    controller: _participantsCtrl,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: CustomColors.mainColor,
                          width: 2.0,
                        ),
                      ),
                      label: Text(
                        "Participants",
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
                      
                    },
                    child: const Text('Create session',
                        style: TextStyle(color: Colors.white, fontSize: 24)),
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