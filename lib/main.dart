import 'package:flutter/material.dart';

import 'View/EmptyTemplate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Studio',
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 46,
            color: Colors.white
          )
        )
        //To Do - create Theme
      ),
      home: const Template(),
    );
  }
}

