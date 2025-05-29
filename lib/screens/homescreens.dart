import 'package:flutter/material.dart';
import 'package:toodoo_app/screens/Login%20&%20Register%20Screens/register_screen.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 290.0),
            child: Image.asset("assets/images/circleshapes.png"),
          ),
          SizedBox(height: 50),

          Center(child: Image.asset("assets/images/middledesign.png")),
          SizedBox(height: 40),
          Text(
            "Gets things with TODs",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 160),
          GestureDetector(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                ),
            child: Container(
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
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
