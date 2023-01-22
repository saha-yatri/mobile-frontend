import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/accountScreen.dart';
import 'package:procative_indicator/homePage.dart';
import 'package:procative_indicator/trainingScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[
    HomePage(),
    Training(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xff638FFF),
        unselectedItemColor: Colors.black,
        unselectedFontSize: 18,
        selectedIconTheme: IconThemeData(size: 20),
        unselectedIconTheme: IconThemeData(size: 20),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(FontAwesomeIcons.homeAlt),
          ),
          BottomNavigationBarItem(
              label: "Training", icon: Icon(Icons.play_lesson)),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(FontAwesomeIcons.userAlt),
          ),
        ],
      ),
    );
  }
}
