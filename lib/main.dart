import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true
      ),
      home: const MyHomepage(),
    );
  }
}





class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("앱 바입니다."),
    ),
    drawer : Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          ListTile(
            title:  Text("Menu1"),
    ),
    DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
    ),
      child: Text("Drawer Header Part"))
    ],
    ),
    ),
    body: const Center(
      child: Text("Hello world"),
    ),
    floatingActionButton: FloatingActionButton(
        onPressed: () => print("click click"),
    child: const Icon(Icons.mouse),
    ),
    );
  }
}