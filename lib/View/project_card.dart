import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {

  const ProjectCard({Key? key, required this.name, required this.desc}) : super(key: key);

  final String name;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(name),
          Text(desc)
        ],
      ),
    );
  }
}
