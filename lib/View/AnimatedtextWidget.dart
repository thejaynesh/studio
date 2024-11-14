import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.displayLarge; // Define style once

    return AnimatedTextKit(
      animatedTexts: [
        buildTypewriterAnimatedText("Analytical Thinker", textStyle!),
        buildTypewriterAnimatedText("Backend Developer", textStyle),
        buildTypewriterAnimatedText("Collaborative Innovator", textStyle),
        buildTypewriterAnimatedText("Detail-Oriented", textStyle),
        buildTypewriterAnimatedText("Eager-to-Learn", textStyle),
        buildTypewriterAnimatedText("Full-Stack Engineer", textStyle),
        buildTypewriterAnimatedText("Growth-Minded", textStyle),
        buildTypewriterAnimatedText("Human-Centered Designer", textStyle),
        buildTypewriterAnimatedText("Initiative-Taker", textStyle),
        buildTypewriterAnimatedText("Jaynesh Bhandari", textStyle),
      ],
      totalRepeatCount: 1, // Play the animation only once
      pause: const Duration(milliseconds: 100), // Pause after each text
      displayFullTextOnTap: true, // Display the full text on tap
      stopPauseOnTap: true, // Stop the pause on tap
    );
  }

  TypewriterAnimatedText buildTypewriterAnimatedText(String text, TextStyle textstyle) {
    return TypewriterAnimatedText(text,
          textStyle: textstyle,
          speed: const Duration(milliseconds: 100));
  }
}