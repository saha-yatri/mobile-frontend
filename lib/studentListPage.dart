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
  List<bool> _selections = List.generate(8, (index) => false);
  final color = const Color(0xff638FFF);

  bool _isExpanded = false;
  bool isSelected = false;
  // bool _isExpanded = true;
  @override
  Widget build(BuildContext context) {
    print("from build $_isExpanded");
    return Column(
      children: [
        ExpansionTile(
            key: UniqueKey(),
            initiallyExpanded: _isExpanded,
            onExpansionChanged: (value) {
              setState(() {
                _isExpanded = value;
              });
              print(_isExpanded);
            },
            textColor: Colors.black,
            iconColor: Colors.black,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ToggleButtons(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Interest'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Cheerful"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Active'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Sad'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Fear"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Dis-obident'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Fight'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Bully"),
                      ),
                    ],
                    isSelected: _selections,
                    onPressed: (index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < _selections.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            _selections[buttonIndex] = true;
                          } else {
                            _selections[buttonIndex] = false;
                          }
                        }
                      });
                    },
                    // borderWidth: 20,
                    // renderBorder: false,
                    selectedColor: Color(0xff638FFF),
                    // direction: Axis.vertical,
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                      _selections = List.generate(8, (index) => false);
                    });
                  },
                ),
              )
            ],
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/pp.jpeg"),
              radius: 25,
            ),
            title: Text("Name : Albert Pangmi"),
            subtitle: Text("Roll no: 01"),
            trailing: _isExpanded
                ? const Icon(FontAwesomeIcons.angleUp)
                : const Icon(FontAwesomeIcons.angleDown)),
        const Divider(
          height: 2,
          color: Color(0xff595959),
        ),
      ],
    );
  }
}
