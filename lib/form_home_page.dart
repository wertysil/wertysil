import 'package:flutter/material.dart';


class form_home extends StatefulWidget {
  const form_home({super.key});

  @override
  State<form_home> createState() => _form_homeState();
}

class _form_homeState extends State<form_home> {

  final _key = GlobalKey<FormState>();
  late String _username, _email;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("from page"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _key,
          child: Column(
            children: [
              usernameInput(),
              emailInput(),
              submitButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameInput() {
    return TextFormField(
      autofocus: true,
      validator: (val) {
        if(val == null || val.isEmpty) {
          return 'The input is empty';
        } else {
            return null;
        }
      },
      onSaved: (username) => _username = username ??"",
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: "유저네임을 입력하세요.",
        labelText: 'username',
      ),
    );
  }

Widget emailInput() {
  return TextFormField(
    autofocus: true,
    validator: (val) {
      if(val == null || val.isEmpty) {
        return 'The input is empty';
      } else {
        return null;
      }
    },
    onSaved: (email) => _email = email ??"",
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
      hintText: "이메일을 입력하세요.",
      labelText: 'email',
    ),
  );
}

Widget submitButton() {
  return ElevatedButton(
      onPressed:() {
        print('버튼이 눌렸습니다.');

        if(_key.currentState!.validate()) {
          _key.currentState!.save();
          Navigator.pushNamed(
          context,
           '/success',
          arguments: {'username': _username, 'email': _email},
          );
        }
  },
  child: Container(
    padding: const EdgeInsets.all(15),
    child: Text("Submit"),
  ),
  );
  }
}

