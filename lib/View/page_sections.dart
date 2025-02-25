import 'package:flutter/material.dart';

class HomeSections extends StatelessWidget {
  final Widget child;

  const HomeSections({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          backgroundBlendMode: BlendMode.softLight,
          color: Colors.black.withValues(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: child,
        ),
      ),
    );
  }
}
