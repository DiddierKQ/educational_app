import 'package:educational_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class AnnouncementWidget extends StatelessWidget {
  //const AnnouncementWidget({Key? key}) : super(key: key);

  String name;
  String author;
  String date;

  AnnouncementWidget({
    Key? key,
    required this.name,
    required this.author,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
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
          child: Row(
            children: [
              Container(
                height: 120,
                width: 12,
                decoration: BoxDecoration(
                  color: CustomColors.mainColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        author,
                        style: const TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                       Text(
                        date,
                        style: const TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 32,
            height: 32,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10, top: 8),
            child: const Icon(
              Icons.info_outlined,
              color: Colors.white,
              size: 24,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
