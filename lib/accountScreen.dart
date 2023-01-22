import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pp.jpeg"),
                  radius: 70,
                  backgroundColor: Colors.white,
                  // child: Image(
                  //   image: AssetImage(
                  //     "assets/images/pp.jpeg",
                  //   ),
                  // fit: BoxFit.cover,
                  // ),
                ),
              ),
            ),
            const Text(
              "Teacher Kumar",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            const Text(
              "Dashdhunga, Chitwan",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const ListTile(
              title: Text("+977-9865256373"),
              subtitle: Text("Phone 1"),
            ),
            const ListTile(
              title: Text("+977-9865256373"),
              subtitle: Text("Phone 2"),
            ),
            const ListTile(
              title: Text("Buddha Jyoti English School"),
              subtitle: Text("School"),
            ),
            const ListTile(
              title: Text("teacherkumar@gmail.com"),
              subtitle: Text("Email"),
            ),
            ElevatedButton(
              child: Text("Update"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Color(0xff638FFF)),
            ),
          ],
        ),
      )),
    );
  }
}
