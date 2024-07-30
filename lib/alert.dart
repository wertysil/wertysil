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
          title: Text("alert 입니다"),
        ),
        body: Container(
          child: Center(
              child: TextButton(
                  child: Text("팝업 버튼"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext con) {
                          return AlertDialog(
                            title: const Text("Dialog Title"),
                            content: Container(
                              child: const Text("내용입니다"),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text("Close"))
                            ],
                          );
                        });
                  })),
        ));
  }
}
