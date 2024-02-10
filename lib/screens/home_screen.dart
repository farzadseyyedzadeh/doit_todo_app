import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final todoController = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: todoController,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    todos.add(todoController.text);
                  });
                  todoController.clear();
                },
                child: Icon(Icons.add)),
            for (String todo in todos) Text(todo),
          ],
        ),
      ),
    );
  }
}
