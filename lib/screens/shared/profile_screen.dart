import 'package:educational_app/screens/shared/edit_profile_screen.dart';
import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
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
            Expanded(
              child: Container(),
              flex: 1,
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      child: Card(
                        margin:
                            const EdgeInsets.only(top: 50, left: 16, right: 16),
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 8, top: 8, right: 8, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    color: Colors.black,
                                    iconSize: 24,
                                    onPressed: () {
                                      Get.to(
                                        () => EditProfileScreen(
                                            profilePicture:
                                                "assets/users/my_profile.jpg",
                                            name: "Diddier",
                                            lastname: "Kantun",
                                            email:
                                                "Diddier.kantun@theksquaregroup.com"),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 28.0,
                            ),
                            const Text(
                              "Diddier Kantun",
                              style: TextStyle(
                                color: CustomColors.secondaryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              "Diddier.kantun@theksquaregroup.com",
                              style: TextStyle(
                                color: CustomColors.secondaryColor,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  ListTile(
                                    onTap: () {},
                                    leading: const Icon(Icons.settings),
                                    title: const Text(
                                      "Settings",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Account configurations",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward),
                                    ),
                                  ),
                                  ListTile(
                                    onTap: () {},
                                    leading: const Icon(
                                      Icons.notifications_active_outlined,
                                      size: 28,
                                    ),
                                    title: const Text(
                                      "Notifications",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Turn on/off the notifications.",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward),
                                    ),
                                  ),
                                  ListTile(
                                    onTap: () {},
                                    leading: const Icon(
                                      Icons.info_outline_rounded,
                                      size: 28,
                                    ),
                                    title: const Text(
                                      "About",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Legal information about the app.",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward),
                                    ),
                                  ),
                                  ListTile(
                                    onTap: () {},
                                    leading: const Icon(
                                      Icons.exit_to_app_outlined,
                                      size: 28,
                                    ),
                                    title: const Text(
                                      "Log out",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Close the current session.",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        child: const CircleAvatar(
                          //maxRadius: 120,
                          backgroundImage:
                              AssetImage("assets/users/my_profile.jpg"),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:
                                  CustomColors.secondaryColor.withOpacity(0.5),
                              width: 2),
                          shape: BoxShape.circle,
                        ),
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
              flex: 1,
            )
          ],
        )
      ],
    );
  }
}
