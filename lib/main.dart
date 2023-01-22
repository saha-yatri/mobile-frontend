import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/homePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'quotes.dart';
import 'dart:math';

Random random = new Random();
int randomNumber = random.nextInt(93);

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
        home: AnimatedSplashScreen(
            duration: 3000,
            //TODO: should make better splash screen
            splash: Container(
                child: Center(
              child: Text(quotes[randomNumber]),
            )),
            nextScreen: LoginPage(),
            splashTransition: SplashTransition.fadeTransition,
            // pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.blue));
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  // controller: _email,
                  decoration: const InputDecoration(
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(FontAwesomeIcons.envelope)),
                ),
              ),
              TextFormField(
                // controller: _email,
                decoration: const InputDecoration(
                    hintText: "Password", prefixIcon: Icon(Icons.lock_outline)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Login")),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
