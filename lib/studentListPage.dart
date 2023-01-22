import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/widgets/classSubjectCard.dart';

import 'homePage.dart';

class StudentListPage extends StatelessWidget {
  StudentListPage({super.key});
  final color = const Color(0xff638FFF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  FontAwesomeIcons.arrowLeft,
                                )),
                            const Text(
                              "Class Student List",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            size: 18,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )),
              ),
              StudentListCard(),
              StudentListCard(),
              StudentListCard(),
            ],
          ),
        ),
      )),
    );
  }
}

class StudentListCard extends StatefulWidget {
  @override
  State<StudentListCard> createState() => _StudentListCardState();
}

class _StudentListCardState extends State<StudentListCard> {
  final color = const Color(0xff638FFF);

  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
            onExpansionChanged: (value) {
              setState(() {
                _isExpanded = value;
              });
            },
            textColor: Colors.black,
            iconColor: Colors.black,
            children: [
              ClassSubjectCard(color: color),
            ],
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/pp.jpeg"),
              radius: 25,
            ),
            title: Text("Name : Albert Pangmi"),
            subtitle: Text("Roll no: 01"),
            trailing: _isExpanded
                ? const Icon(FontAwesomeIcons.chevronUp)
                : const Icon(FontAwesomeIcons.chevronDown)),
        const Divider(
          height: 2,
          color: Color(0xff595959),
        ),
      ],
    );
  }
}
