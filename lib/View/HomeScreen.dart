import 'package:flutter/material.dart';
import 'package:studio/View/AnimatedtextWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            backgroundBlendMode: BlendMode.softLight,
            color: Colors.white,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const AnimatedTextWidget(
                  texts: [
                    "Analytical Thinker",
                    "Backend Developer",
                    "Collaborative Innovator",
                    "Detail-Oriented",
                    "Eager-to-Learn",
                    "Full-Stack Engineer",
                    "Growth-Minded",
                    "Human-Centered Designer",
                    "Initiative-Taker",
                    "Jaynesh Bhandari",
                  ],
                ),
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://firebasestorage.googleapis.com/v0/b/studio-jb12.appspot.com/o/portfolio-img.jpg?alt=media&token=e947ff21-dff9-49e4-aedc-e01180aa6f7b",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
