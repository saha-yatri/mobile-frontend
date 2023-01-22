import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homePage.dart';

class StudentListPage extends StatelessWidget {
  StudentListPage({super.key});
  final color = Color(0xff638FFF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(children: [
                  Text("Class Student List", style: TextStyle(fontSize: 18)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(FontAwesomeIcons.chevronDown)
                ]),
              ),
              ExpansionTile(
                textColor: Colors.black,
                iconColor: Colors.black,
                children: [
                  ClassSubjectCard(color: color),
                ],
                leading: CircleAvatar(
                  radius: 25,
                ),
                title: Text("Name : Albert Pangmi"),
                subtitle: Text("Roll no: 01"),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(FontAwesomeIcons.chevronDown)),
              ),
              Divider(
                height: 2,
                color: Color(0xff595959),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name : Albert Pangmi"),
                subtitle: Text("Roll no: 01"),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(FontAwesomeIcons.chevronDown)),
              ),
              Divider(
                height: 2,
                color: Color(0xff595959),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Name : Albert Pangmi"),
                subtitle: Text("Roll no: 01"),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(FontAwesomeIcons.chevronDown)),
              ),
              Divider(
                height: 2,
                color: Color(0xff595959),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
