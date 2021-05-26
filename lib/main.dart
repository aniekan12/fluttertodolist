import 'package:flutter/material.dart';
import 'package:mytodolist/details.dart';
import 'package:mytodolist/models/todo_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Todo> todos;

  MyApp({Key key, this.todos}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final todos = List.generate(
    20,
    (index) => Todo(
      title: 'Todo $index',
      description: 'A description of what needs to be done for $index',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(todos[index].title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  todo: todos[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
