import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Login"),

      ),
      body: Padding(
        padding:  EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
                prefixIcon: Icon(Icons.person),

              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffix: Icon(Icons.remove_red_eye),

              ),

            ),
            Align(
               alignment: Alignment.topRight ,
              child: TextButton(onPressed: (){},


                  child: Text("forgot password")),
            ),
            ElevatedButton(onPressed: (){

            }, child: Text("Login")),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",),
                TextButton(onPressed: (){}, child: Text("Signup"))
              ],


            ),


          ],

        ),
      ),
    );
  }
}
