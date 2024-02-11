import 'package:doit_todo_app/widgets/todo_item.dart';
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
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('tasks'), Text('setting'), Text('logout')],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('DoIt'),
        centerTitle: true,
      ),
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
            for (String todo in todos) ToDoItem(todoText: todo),
          ],
        ),
      ),
    );
  }
}
