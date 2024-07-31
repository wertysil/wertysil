import 'package:flutter/material.dart';


class stack extends StatefulWidget {
  const stack({super.key});

  @override
  State<stack> createState() => _stackState();
}

class _stackState extends State<stack> {
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
