import 'package:flutter/material.dart';

class CustomButton {
  static Widget getStartedButton(String text) {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Color(0xff50C2C9)],
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
