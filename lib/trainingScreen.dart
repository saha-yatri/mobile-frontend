import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Training extends StatelessWidget {
  Training({super.key});
  String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(FontAwesomeIcons.arrowLeft))
            ],
          ),
          TrainingCard(lorem: lorem),
          TrainingCard(lorem: lorem)
        ],
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black.withOpacity(0.4),
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 200,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title of the video",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  lorem.characters.take(107).toString() + "....",
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Duration: 30 mins",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1611162616475-46b635cb6868?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGh1bWJuYWlsfGVufDB8fDB8fA%3D%3D&w=1000&q=80")),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Watch"),
                style: ElevatedButton.styleFrom(primary: Color(0xff638FFF)),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
