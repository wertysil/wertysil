import 'package:flutter/material.dart';

class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
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
