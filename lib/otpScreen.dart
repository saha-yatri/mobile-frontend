import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/buttomNavbar.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
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
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                      hintText: "Enter OTP",
                      hintStyle: TextStyle(fontSize: 14),
                      prefixIcon: Icon(
                        FontAwesomeIcons.lock,
                        size: 18,
                      )),
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
                  child: Text('Login'),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ButtomNavBar()),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
