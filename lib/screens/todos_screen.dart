import 'package:flutter/material.dart';

class ToDosScreen extends StatelessWidget {
  const ToDosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F4F3),
      body: Column(
        children: [
          Container(
            height: 260,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xff50C2C9)),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/shape (1).png",
                    width: 150, // adjust as needed
                  ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://media.licdn.com/dms/image/v2/D4D03AQH-YbSv0ne5qg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1729852701122?e=1753920000&v=beta&t=sdw4G6TioHaa_uH1jq7BtGKJWgqxO50EjxN8stXsrd0",
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Fazal Hamza Khan",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 320),
            child: Text(
              "Good AfterNoon",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
