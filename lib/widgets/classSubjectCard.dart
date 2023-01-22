import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassSubjectCard extends StatelessWidget {
  const ClassSubjectCard({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Class Five (5)",
                style: TextStyle(
                    color: color != null ? Colors.white : Colors.grey[600],
                    height: 1.4,
                    fontSize: 10),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Social Studies",
                style: TextStyle(
                    color: color != null ? Colors.white : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              )),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Icon(
                  Icons.group,
                  color: color != null ? Colors.white : Colors.grey[600],
                ),
                SizedBox(
                  width: 5,
                ),
                Text('32 Students',
                    style: TextStyle(
                      fontSize: 10,
                      color: color != null ? Colors.white : Colors.grey[600],
                    )),
              ],
            ),
            Row(children: [
              CircleAvatar(
                radius: 15,
                child: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.grey,
                  size: 15,
                ),
                backgroundColor:
                    color != null ? Colors.white : Colors.grey[100],
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 15,
                child: Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.grey,
                  size: 15,
                ),
                backgroundColor:
                    color != null ? Colors.white : Colors.grey[100],
              ),
            ]),
          ]),
        ]));
  }
}
