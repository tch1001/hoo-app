import 'package:flutter/material.dart';

Color mydarkblue = Color.fromARGB(255, 18, 43, 134);
Color buttonColor = Colors.white;
TextStyle buttonTextStyle = TextStyle(
  color: mydarkblue,
  fontSize: 20,
);
ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: buttonColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    )
);