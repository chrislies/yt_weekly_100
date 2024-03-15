import 'package:flutter/material.dart';

// Center widgets in the view window
class CenteredView extends StatelessWidget {
  // Take in a widget named 'child'
  final Widget child;
  const CenteredView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: child,
        ));
  }
}
