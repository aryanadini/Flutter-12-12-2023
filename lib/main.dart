import 'package:flutter/material.dart';
import 'package:new1/Exam.dart';
import 'package:new1/Mystack.dart';
import 'package:new1/Signup.dart';
import 'package:new1/Whtsapp.dart';
import 'package:new1/autosizeddemo.dart';
import 'package:new1/grcustom.dart';
import 'package:new1/login.dart';
import 'package:new1/mytoast.dart';
import 'package:new1/newstaggered.dart';
import 'package:new1/staggeredgriddemo.dart';


import 'Whatsapp2.dart';
import 'a.dart';
import 'mysnackbar.dart';
import 'mytextfield.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Mystck(),
    );
  }
}
