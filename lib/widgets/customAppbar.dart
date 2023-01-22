import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  //

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Veeneta👋",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Shree Janappriya Ma.Vi",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.bell,
                  )),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/pp.jpeg"),
                radius: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}

// openDrawer() {
//   }
//   return Drawer(
//     child: ListView(
//       // Important: Remove any padding from the ListView.
//       padding: EdgeInsets.zero,
//       children: [
//         const DrawerHeader(
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//           child: Text('Drawer Header'),
//         ),
//         ListTile(
//           title: const Text('Item 1'),
//           onTap: () {
//             // Update the state of the app.
//             // ...
//           },
//         ),
//         ListTile(
//           title: const Text('Item 2'),
//           onTap: () {
//             // Update the state of the app.
//             // ...
//           },
//         ),
//       ],
//     ),
//   );
