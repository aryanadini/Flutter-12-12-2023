import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Popup.dart';

class mytextfield1 extends StatefulWidget {
  mytextfield1({super.key});

  @override
  State<mytextfield1> createState() => _mytextfield1State();
}

class _mytextfield1State extends State<mytextfield1> {
  TextEditingController _c = TextEditingController();
  TextEditingController _f = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bio"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  validator: (String? Username) {
                    if (Username!.isEmpty) {
                      return "must fill field user name";
                    } else {
                      return null;
                    }
                  },
                  controller: _c,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "username",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextFormField(
                  validator: (String? Password) {
                    if (Password!.isEmpty) {
                      return "must fill field";
                    } else {
                      return null;
                    }
                  },
                  controller: _f,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    prefixIcon: Icon(Icons.lock),
                    suffix: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {}
                      print(_c.text);
                    },
                    child: Text("login"))
              ],
            ),
          ),
        ));
  }
}
