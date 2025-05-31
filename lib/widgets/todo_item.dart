import 'package:flutter/material.dart';
import 'package:toodoo_app/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Colors.white,
      leading: Icon(Icons.check_box, color: Colors.blue),
      title: Text(
        todo.todoText,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          decoration: TextDecoration.lineThrough,
        ),
      ),
      trailing: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          onPressed: () {},
          iconSize: 18,
          icon: Icon(Icons.delete, color: Colors.white),
        ),
      ),
    );
  }
}
