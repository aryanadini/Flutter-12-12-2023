import 'package:flutter/cupertino.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';




class Autosizeddemo extends StatefulWidget {
  const Autosizeddemo({super.key});

  @override
  State<Autosizeddemo> createState() => _AutosizeddemoState();
}

class _AutosizeddemoState extends State<Autosizeddemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: SizedBox(
          width: 200,
          height: 140,
          child: AutoSizeText(
            'This string will be automatically resized to fit in two lines.',
            style: TextStyle(fontSize: 30),
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
