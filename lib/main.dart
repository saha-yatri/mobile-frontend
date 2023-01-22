import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/buttomNavbar.dart';
import 'package:procative_indicator/homePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'quotes.dart';
import 'dart:math';

Random random = new Random();
int randomNumber = random.nextInt(16);

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lato'),
      home: EasySplashScreen(
        logo: Image.asset('assets/images/bat.png'),
        title: Text(
          softWrap: true,
          maxLines: 5,
          quotes[randomNumber],
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        showLoader: false,
        navigator: ButtomNavBar(),
        durationInSeconds: 3,
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextFormField(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffF7F7F7),
                ),
                child: TextFormField(
                  controller: _phone,
                  keyboardType: TextInputType.phone,
                  onChanged: ((value) {}),
                  decoration: const InputDecoration(
                      hintText: "Enter your Phone Number",
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(FontAwesomeIcons.phone)),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff638FFF),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtomNavBar()));
                    },
                    child: Text("Get OTP")),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
