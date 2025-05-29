import 'package:flutter/material.dart';
import 'package:toodoo_app/screens/Login%20&%20Register%20Screens/register_screen.dart';
import 'package:toodoo_app/screens/todos_screen.dart';
import 'package:toodoo_app/screens/widgets/bottom_button.dart';
import 'package:toodoo_app/screens/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "Welcome Back",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          SizedBox(height: 40),
          Image.asset("assets/images/login.png"),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: CustomTextField.getTextField("Enter Your Email"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: CustomTextField.getTextField("Enter Password"),
          ),
          SizedBox(height: 20),
          Text(
            "Forget Password?",
            style: TextStyle(color: Color(0xff50C2C9), fontFamily: "Poppins"),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToDosScreen()),
                ),
            child: CustomButton.getStartedButton("Login"),
          ),
          SizedBox(height: 10),
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
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      ),
                  child: Text(
                    " Sign Up",
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
