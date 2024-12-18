import 'package:flutter/material.dart';
import 'package:studio/View/HomeScreen.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Color.,
          //   title: Text("Jaynesh Bhandari"),
          //   centerTitle: true,
          // ),
            body:
            Container(

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Color(0xFF7813C8), Color(0xFF4993EA)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                )
            ), child: SafeArea(
              child: getSelectedScreen(), // Display screen based on index
            ),
            ))
    );
  }
    Widget getSelectedScreen() {
      switch (screenIndex) {
        case 0:
          return const HomeScreen();
      // case 1:
      //   return const SettingsScreen(); // Replace with another screen
        default:
          return const HomeScreen();
      }
  }
}
