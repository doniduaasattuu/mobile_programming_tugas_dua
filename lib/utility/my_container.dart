import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  MyContainer({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
        child: child,
      ),
    );
  }
}
