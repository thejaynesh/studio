import 'dart:async';
import 'package:flutter/material.dart';
import 'package:studio/Model/JobApplication.dart';
import 'package:studio/View/AnimatedtextWidget.dart';
import 'EmptyTemplate.dart';

class SplashScreen extends StatefulWidget {
  final JobApplication data;

  const SplashScreen({Key? key, required this.data}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState(data: data);
}

class _SplashScreenState extends State<SplashScreen> {
  final JobApplication data;
  _SplashScreenState({required this.data});

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Template()),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your background color here
      body: Center(
        child: AnimatedTextWidget(texts: [
          'Welcome',
           'Recruitor at ${data.CompanyName} '
        ],

        )
      ),
    );
  }
}
