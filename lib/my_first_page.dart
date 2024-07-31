import 'package:flutter/material.dart';
class my_first_page extends StatefulWidget {
  const my_first_page({super.key});

  @override
  State<my_first_page> createState() => _my_first_pageState();
}

class _my_first_pageState extends State<my_first_page> {
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
          child: Text("Hello world")),
        floatingActionButton: FloatingActionButton(
        onPressed: () => print("click click"),
        child: const Icon(Icons.mouse),
        ),
    );
  }

}