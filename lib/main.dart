import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> todo_task = [
    "Huzaifa Hanif",
        "Task 1",
    "Task 2",
    "Task 3"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: Column(children: [
        Column(
          children: todo_task.map((e) => Text(e)).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Add"))
      ]),
    );
  }
}
