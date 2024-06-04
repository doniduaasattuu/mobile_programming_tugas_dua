import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  MyContainer({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(18, 36, 18, 18),
        child: child,
      ),
    );
  }
}
