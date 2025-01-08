import 'package:flutter/material.dart';
import 'package:studio/View/HomeScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'CustomFAB.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int screenIndex = 0;


  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Color.,
          //   title: Text("Jaynesh Bhandari"),
          //   centerTitle: true,
          // ),
          floatingActionButton: ExpandableFab(
            distance: 88,
            children: [
              ActionButton(
                onPressed: () {_launchUrl(Uri.parse('tel:+12073137210'));},
                icon: const Icon(Icons.mail_outline),
              ),
              ActionButton(
                onPressed: () {_launchUrl(Uri.parse('tel:+12073137210'));},
                icon: const Icon(Icons.phone),
              ),
              ActionButton(
                onPressed: () {_launchUrl(Uri.parse('tel:+12073137210'));}
                ,
                icon: const Icon(Icons.textsms_outlined),
              ),
            ],
          ),

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
