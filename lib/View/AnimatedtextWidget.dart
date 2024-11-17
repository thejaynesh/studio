import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  final List<String> texts; // Array of strings for the animated text

  const AnimatedTextWidget({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.displayLarge!; // Define style once

    return AnimatedTextKit(
      animatedTexts: texts
          .map((text) => buildTypewriterAnimatedText(text, textStyle))
          .toList(),
      totalRepeatCount: 1, // Play the animation only once
      pause: const Duration(milliseconds: 100), // Pause after each text
      displayFullTextOnTap: true, // Display the full text on tap
      stopPauseOnTap: true, // Stop the pause on tap
    );
  }

  TypewriterAnimatedText buildTypewriterAnimatedText(
      String text, TextStyle textStyle) {
    return TypewriterAnimatedText(
      text,
      textStyle: textStyle,
      speed: const Duration(milliseconds: 100),
    );
  }
}
