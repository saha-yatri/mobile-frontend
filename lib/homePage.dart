import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/studentListPage.dart';
import 'package:procative_indicator/widgets/customAppbar.dart';
import 'package:procative_indicator/widgets/peroidRowCard.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentListPage()));
                  }),
                  child: PeroidRowCard(
                    color: const Color(0xff638FFF),
                  ),
                ),
                PeroidRowCard(),
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
