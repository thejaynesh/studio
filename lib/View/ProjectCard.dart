import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {

  ProjectCard({required this.name, required this.desc});

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
