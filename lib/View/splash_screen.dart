import 'dart:async';
import 'package:flutter/material.dart';
import 'package:studio/Model/job_application.dart';
import 'package:studio/View/animated_text_widget.dart';
import 'main_frame.dart';

class SplashScreen extends StatefulWidget {
  final JobApplication data;

  const SplashScreen({Key? key, required this.data}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState(data: data);
}

class _SplashScreenState extends State<SplashScreen> {
  final JobApplication data;
  _SplashScreenState({required this.data});

  int secs = 5;

  String getWelcomeMessage(String compName){
    if(compName == "Your Company"){
      return "";
    }
    return "Recruiter @ $compName";
  }

  @override
  void initState() {
    super.initState();
    if(data.companyName =="Your Company"){
      secs = 1;
    }
    Timer(Duration(seconds: secs), () {
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
           '${getWelcomeMessage(data.companyName)} '
        ],

        )
      ),
    );
  }
}
