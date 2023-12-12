import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mystck extends StatefulWidget {
  const Mystck({super.key});

  @override
  State<Mystck> createState() => _MystckState();
}

class _MystckState extends State<Mystck> {



  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          final snackBar = SnackBar(
            content:  Text('!!!!deleted'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );


          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, child:Text("show ") ),
      ),
    );
  }
}
