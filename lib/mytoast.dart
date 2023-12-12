import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Mytoast extends StatefulWidget {
  const Mytoast({super.key});

  @override
  State<Mytoast> createState() => _MytoastState();
}

class _MytoastState extends State<Mytoast> {

  late FToast ftoast;


  @override
  void initState() {
    ftoast=FToast();
    ftoast.init(context);
  }
_showToast(String msg)
{
  ftoast.showToast(child: Container(
    height: 100,
    width: 220,
    color: Colors.red,
    child: Text("$msg"),

  ),
  gravity: ToastGravity.CENTER_RIGHT,
    toastDuration: Duration(seconds: 5)

  );



}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Toast"),

      ),

      body: Center(
        child: ElevatedButton(onPressed: (){

_showToast("ghhghghj");
        }, child: Text("sign")),
      ),
    );
  }
}
