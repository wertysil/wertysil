import 'package:flutter/material.dart';
import 'package:flutter_app/second_view.dart';


class navigator extends StatefulWidget {
  const navigator({super.key});

  @override
  State<navigator> createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("네비게이터 화면"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => SecondView())
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.blue,
          child: Text("Get started"),
          ),
        ),
      ),
    );
  }
}
