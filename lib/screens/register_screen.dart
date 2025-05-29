import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 290.0),
            child: Image.asset("assets/images/circleshapes.png"),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
