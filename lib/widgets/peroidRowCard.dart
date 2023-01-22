// A row of single peroid Which have time in left  verticla bar in middle with
// a center dot and have a teacher peroidCard that hold peroid information

import 'package:flutter/material.dart';
import 'package:procative_indicator/studentListPage.dart';
import 'package:procative_indicator/widgets/classSubjectCard.dart';

class PeroidRowCard extends StatelessWidget {
  PeroidRowCard(
      {this.color, this.grade, this.studentCount, this.subject, this.time});
  final Color? color;
  final String? grade;
  final int? studentCount;
  final String? subject;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => StudentListPage())),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Center(
                  child: Text(time!,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700))),
            ),
            Stack(children: [
              VerticalDivider(
                color: Color(0xff595959),
                thickness: 4,
              ),
              Center(
                child: Icon(
                  Icons.circle,
                  size: 15,
                  color: color ?? Colors.grey[500],
                ),
              )
            ]),
            Flexible(
              flex: 2,
              child: ClassSubjectCard(
                  color: color,
                  grade: grade,
                  studentCount: studentCount,
                  subject: subject),
            ),
          ],
        ),
      ),
    );
  }
}
