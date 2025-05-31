class ToDo {
  String id;
  String todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Watch Flutter bootcamp lesson', isDone: true),
      ToDo(id: '02', todoText: 'Fix layout in UI screen', isDone: true),
      ToDo(id: '03', todoText: 'Work on navigation drawer feature'),
      ToDo(id: '04', todoText: 'Add shared_preferences logic'),
      ToDo(id: '05', todoText: 'Practice Dart List & Map for 2 hours'),
    ];
  }
}
