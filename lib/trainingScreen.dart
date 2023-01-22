import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Training extends StatelessWidget {
  Training({super.key});
  String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [TrainingCard(lorem: lorem), TrainingCard(lorem: lorem)],
        ),
      ),
    )));
  }
}

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    Key? key,
    required this.lorem,
  }) : super(key: key);

  final String lorem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
            opacity: 0.6,
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1611162616475-46b635cb6868?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGh1bWJuYWlsfGVufDB8fDB8fA%3D%3D&w=1000&q=80")),
        borderRadius: BorderRadius.circular(16),
        color: Colors.black.withOpacity(0.4),
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title of the video",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              lorem.characters.take(80).toString() + "....",
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Duration: 30 mins",
              style: TextStyle(fontSize: 15, color: Colors.grey[400]),
            ),
            TextButton(
              onPressed: () => launch(
                  'https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
              child: Text(
                "Enroll",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(primary: Color(0xff638FFF)),
            )
          ],
        ),
      ),
    );
  }
}
