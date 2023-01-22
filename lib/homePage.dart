import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/studentListPage.dart';
import 'package:procative_indicator/widgets/customAppbar.dart';
import 'package:procative_indicator/widgets/peroidRowCard.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
            child: Column(
              children: [
                CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25.0, left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Today's Schedule",
                            style: TextStyle(fontSize: 16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(FontAwesomeIcons.calendar, size: 16),
                            SizedBox(
                              width: 8,
                            ),
                            Text("Wed", style: TextStyle(fontSize: 16))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                PeroidRowCard(
                    color: Color(0xff638FFF),
                    grade: "Five (5)",
                    studentCount: 32,
                    subject: "Social Studies",
                    time: "09:00 AM"),
                PeroidRowCard(
                    grade: "Four (4)",
                    studentCount: 46,
                    subject: "Moral Science",
                    time: "10:10 AM"),
                PeroidRowCard(
                    grade: "Six (6)",
                    studentCount: 27,
                    subject: "Social Studies",
                    time: "11:30 AM"),
                PeroidRowCard(
                    grade: "Seven (7)",
                    studentCount: 44,
                    subject: "Social Studies",
                    time: "01:40 PM"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding welcomeText(String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16),
    );
  }
}
