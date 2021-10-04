import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget with PreferredSizeWidget {
  //const AppbarWidget({ Key? key }) : super(key: key);

  String title;
  bool enableReturnButton;

  AppbarWidget({Key? key, 
    required this.title,
    this.enableReturnButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.mainColor,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      elevation: 0,
      automaticallyImplyLeading:
          enableReturnButton, // Avoid the return button on android devices
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}