import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/main.dart';



class Whtsapp extends StatefulWidget {
  const Whtsapp({super.key});

  @override
  State<Whtsapp> createState() => _WhtsappState();
}

class _WhtsappState extends State<Whtsapp> {

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("WhatsApp"
        , style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.green,
actions: [IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt))

],

      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text("data"),
            subtitle: Text("network"),
            checkColor: Colors.deepOrangeAccent,

            value: isChecked, onChanged: (bool? value) { setState(() {
            isChecked=! isChecked;
          }); } ,
          ),
          CheckboxListTile(
            title: Text("phone"),
            subtitle: Text("network"),
            checkColor: Colors.deepOrangeAccent,

            value: isChecked, onChanged: (bool? value) { setState(() {
            isChecked=! isChecked;
          }); } ,
          )
        ],


      )



    );
  }

}




