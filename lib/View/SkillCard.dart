import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({Key? key, required this.skillText, required this.logoURL}) : super(key: key);
  final String logoURL;
  final String skillText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 1.0,
        children: [
          Image.asset(logoURL, height: 75, width: 75,),
          //Image(image: AssetImage("assets/images/logos/flutter-logo.png"),fit: BoxFit.fitHeight,),
          Text(skillText,style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
            overflow: TextOverflow.clip,softWrap: false,)
        ],
      ),
    );
  }
}

