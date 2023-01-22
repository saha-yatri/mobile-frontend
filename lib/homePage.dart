import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/studentListPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  openDrawer() {
    print("Hello world");
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(children: []),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: const Icon(FontAwesomeIcons.barsStaggered)),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.bell,
                            )),
                        const CircleAvatar(
                          radius: 15,
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: const Center(
                    child: Text(
                      "Welcome, Veenet Sir!",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 16),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Today's Schedule",
                            style: TextStyle(fontSize: 16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(FontAwesomeIcons.calendar),
                            SizedBox(
                              width: 10,
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
                    color: Color(0xff638FFF),
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
}

class PeroidRowCard extends StatelessWidget {
  PeroidRowCard({this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
                child: Text('9:00 AM',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
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
                color: Color(0xff638FFF),
              ),
            )
          ]),
          Flexible(
            flex: 2,
            child: ClassSubjectCard(color: color),
          ),
        ],
      ),
    );
  }
}

class ClassSubjectCard extends StatelessWidget {
  const ClassSubjectCard({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        width: MediaQuery.of(context).size.width,
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
                  width: 10,
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
