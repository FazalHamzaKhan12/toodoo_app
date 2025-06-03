import 'package:flutter/material.dart';
import 'package:toodoo_app/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final Function(bool?) onChanged;
  final VoidCallback onDelete;

  const TodoItem({
    super.key,
    required this.todo,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: todo.isDone,
        activeColor: const Color(0xff50C2C9),
        onChanged: onChanged,
      ),
      title: Text(
        todo.todoText,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: onDelete,
      ),
    );
  }
}
