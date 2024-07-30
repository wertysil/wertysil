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
        title: Text("버튼페이지"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow
                ),
                onPressed: () { print("Elevatedbutton click"); },
                child: Text("Elevatedbutton 버튼"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () { print("Textbutton click"); },
                child: Text("Textbutton 버튼"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () { print("Outlinebutton click"); },
                child: Text("Outlinebutton 버튼"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
