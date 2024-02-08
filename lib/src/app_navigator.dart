import 'package:flutter/material.dart';

class AppNavigator {
  // ignore: prefer_typing_uninitialized_variables
  final destination;
  BuildContext context;
  pop() {
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => destination));
  }

  push() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => destination));
  }

  pushR() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => destination));
  }

  AppNavigator({required this.destination, required this.context});
}
