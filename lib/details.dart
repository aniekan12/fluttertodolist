import 'package:flutter/material.dart';

import 'models/todo_model.dart';

class DetailScreen extends StatelessWidget {
  final Todo todo;

  DetailScreen({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Text(todo.description),
      ),
    );
  }
}
