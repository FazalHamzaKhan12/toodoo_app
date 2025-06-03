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
  List<ToDo> todosList = ToDo.todoList();
  final TextEditingController _todoController = TextEditingController();

  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) return 'Good Morning';
    if (hour >= 12 && hour < 17) return 'Good Afternoon';
    if (hour >= 17 && hour < 21) return 'Good Evening';
    return 'Good Night';
  }

  void _toggleTodoStatus(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteTodo(ToDo todo) {
    setState(() {
      todosList.remove(todo);
    });
  }

  void _addTodoItem(String taskText) {
    if (taskText.isEmpty) return;
    setState(() {
      todosList.add(
        ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todoText: taskText,
        ),
      );
    });
    _todoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F4F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
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
                      width: 150,
                    ),
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

            // Greeting
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

            // Clock
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

            // Task List Title
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

            // Task Card
            Container(
              width: 430,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    spreadRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Add Task Input
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _todoController,
                          decoration: const InputDecoration(
                            hintText: 'Add new task',
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(Icons.add),
                        color: const Color(0xFF43C7CF),
                        onPressed: () {
                          _addTodoItem(_todoController.text);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Task List Scrollable
                  SizedBox(
                    height: 200,
                    child: ListView(
                      children: [
                        for (ToDo todo in todosList)
                          TodoItem(
                            todo: todo,
                            onChanged: (value) => _toggleTodoStatus(todo),
                            onDelete: () => _deleteTodo(todo),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
