import 'package:flutter/material.dart';


class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Stack(
    children: <Widget>[
    Container(
    width: 400,
    height: 300,
    color: Colors.red,
    ),
    Container(
    width: 200,
    height: 10,
    color: Colors.green,
     ),
      ],
        )
    );
           }
              }
