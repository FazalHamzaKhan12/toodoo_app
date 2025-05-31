import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:toodoo_app/todo.dart';
import 'package:toodoo_app/widgets/todo_item.dart';

class ToDosScreen extends StatefulWidget {
  const ToDosScreen({super.key});

  @override
  State<ToDosScreen> createState() => _ToDosScreenState();
}

class _ToDosScreenState extends State<ToDosScreen> {
  String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) {
      return 'Good Morning';
    } else if (hour >= 12 && hour < 17) {
      return 'Good Afternoon';
    } else if (hour >= 17 && hour < 21) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  final todosList = ToDo.todoList();

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
                  child: Image.asset("assets/images/shape (1).png", width: 150),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://media.licdn.com/dms/image/v2/D4D03AQH-YbSv0ne5qg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1729852701122?e=1753920000&v=beta&t=sdw4G6TioHaa_uH1jq7BtGKJWgqxO50EjxN8stXsrd0",
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
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
            padding: const EdgeInsets.only(top: 20.0, right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                getGreeting(),
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 150,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: AnalogClock(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.transparent),
                  color: const Color(0xfff1fdff),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                width: 150.0,
                isLive: true,
                hourHandColor: const Color(0xff50C2C9),
                minuteHandColor: const Color(0xff50C2C9),
                secondHandColor: Colors.grey,
                showSecondHand: true,
                numberColor: const Color(0xff50C2C9),
                showNumbers: true,
                showAllNumbers: true,
                textScaleFactor: 1.4,
                showTicks: false,
                datetime: DateTime.now(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Task List",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 280,
            width: 430,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12, // subtle black with transparency
                  blurRadius: 12,
                  spreadRadius: 10,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 10),
                      child: Text(
                        "Daily Task",
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: "Poppins",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: IconButton(
                          icon: Center(child: const Icon(Icons.add, size: 20)),
                          color: Color(0xFF43C7CF),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                for (ToDo todo in todosList) TodoItem(todo: todo),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//for (ToDo todo in todosList) TodoItem(todo: todo),
