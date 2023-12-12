import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/main.dart';

enum sample {home,login,logout}

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  sample? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PopupMenuButton')),
body: Center(
  child: PopupMenuButton<sample>(
    initialValue: selectedMenu,
    onSelected: (sample item){
      setState(() {
        selectedMenu=item;
      });
    },
itemBuilder: (BuildContext context)=><PopupMenuEntry<sample>>[
   PopupMenuItem<sample>(
    value: sample.home,
    child: Text('Item 1'),
  ),
   PopupMenuItem<sample>(
    value: sample.login,
    child: Text('Item 2'),
  ),
   PopupMenuItem<sample>(
    value: sample.logout,
    child: Text('Item 3'),
  ),
],

  ),
),

    );
  }
}



