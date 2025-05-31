import 'package:flutter/material.dart';
import 'package:toodoo_app/screens/Login%20&%20Register%20Screens/login_screen.dart';
import 'package:toodoo_app/widgets/bottom_button.dart';
import 'package:toodoo_app/widgets/text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F4F3),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 290.0),
            child: Image.asset("assets/images/circleshapes.png"),
          ),
          SizedBox(height: 40),
          Text(
            "Welcome to Onboard!",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Let’s help to meet up your \ntasks.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 12,
            ),
          ),
          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: CustomTextField.getTextField("Enter Your Full Names"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: CustomTextField.getTextField("Enter Your Email"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: CustomTextField.getTextField("Enter Password"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: CustomTextField.getTextField("Confirm password"),
          ),
          SizedBox(height: 40),
          GestureDetector(child: CustomButton.getStartedButton("Register")),
          SizedBox(height: 15),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      ),
                  child: Text(
                    " Sign In",
                    style: TextStyle(
                      color: Color(0xff50C2C9),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
