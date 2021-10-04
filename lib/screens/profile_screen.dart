import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';

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
                            const SizedBox(
                              height: 88.0,
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
                            //buildListView()
                            Expanded(
                              child: ListView(
                                children: [
                                  ListTile(
                                    onTap: () {},
                                    leading: const Icon(
                                        Icons.account_circle_outlined),
                                    title: const Text(
                                      "My account",
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
                                      Icons.shopping_bag_outlined,
                                      size: 28,
                                    ),
                                    title: const Text(
                                      "My orders",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Manage orders.",
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
                                      Icons.maps_home_work_outlined,
                                      size: 28,
                                    ),
                                    title: const Text(
                                      "My addresses",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Manage delivery addresses.",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward),
                                    ),
                                  ),
                                  const ListTile(
                                    leading: Icon(
                                      Icons.payment_outlined,
                                      size: 28,
                                    ),
                                    title: Text(
                                      "Payment methods",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Manage payment methods.",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    trailing: Icon(Icons.arrow_forward),
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
