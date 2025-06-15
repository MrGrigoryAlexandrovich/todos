import 'package:flutter/material.dart';
import 'todo.dart';
import 'todo_tile.dart';

class Todos extends StatefulWidget {
  const Todos({super.key});

  @override
  State<Todos> createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  final List<Todo> _todoList = [
    Todo(title: "Task 1", isDone: false),
    Todo(title: "Task 2", isDone: false),
    Todo(title: "Task 3", isDone: false),
  ];

  void _toggleTodo(int index) {
    setState(() {
      _todoList[index].onChange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _todoList.length,
      itemBuilder: (context, index) {
        final todo = _todoList[index];
        return TodoTile(todo: todo, onToggle: () => _toggleTodo(index));
      },
    );
  }
}
