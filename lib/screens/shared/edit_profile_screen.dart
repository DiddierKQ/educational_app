import 'package:educational_app/utils/colors_utils.dart';
import 'package:educational_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  //const EditProfileScreen({ Key? key }) : super(key: key);
  String profilePicture;
  String name;
  String lastname;
  String email;

  EditProfileScreen({
    Key? key,
    required this.profilePicture,
    required this.name,
    required this.lastname,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidget(title: "My account", enableReturnButton: true),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          ); // Function to hide the keyboard once you clic outside the textfield
        },
        child: Container(
          margin: const EdgeInsets.all(32.0),
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        maxRadius: 120,
                        backgroundImage: AssetImage(profilePicture),
                      ),
                      Positioned(
                        bottom: 0,
                        //right: 0,
                        left: 160,
                        child: ClipOval(
                          child: Container(
                            padding: const EdgeInsets.all(3.0),
                            color: Colors.white,
                            child: ClipOval(
                              child: Container(
                                color: CustomColors.mainColor,
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(Icons.camera_alt_outlined),
                                  color: Colors.white,
                                  iconSize: 32,
                                  onPressed: () {
                                    
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        keyboardType: TextInputType.text,
                        controller: TextEditingController(text: name),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CustomColors.mainColor,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        //maxLines: widget.maxLines,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Last name",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        keyboardType: TextInputType.text,
                        controller: TextEditingController(text: lastname),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CustomColors.mainColor,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        //maxLines: widget.maxLines,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Email address",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        keyboardType: TextInputType.text,
                        controller: TextEditingController(text: email),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: CustomColors.mainColor,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        //maxLines: widget.maxLines,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: CustomColors.mainColor,
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    onPressed: () {},
                    child: const Text('Save changes',
                        style: TextStyle(color: Colors.white, fontSize: 24)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    child: const Text(
                      "Change password",
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.mainColor,
                      ),
                    ),
                    onPressed: () {},
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
