import 'package:flutter/material.dart';

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
        title: const Text("안녕하세요"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: 200,
                  color: Colors.blue,
    ),
    Container(
      width: MediaQuery.of(context).size.width/2,
      height: 200,
      color: Colors.red,
                          ),
                       ]
                    ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: 200,
                      color: Colors.orange,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: 200,
                      color: Colors.green,
                    ),
                  ]
              )
            ]
        ),
      )
    );
  }
}
