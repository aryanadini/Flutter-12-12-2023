import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _name=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _phone=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _cpassword=TextEditingController();
  final _formkey = GlobalKey<FormState>();

  String? validatePassword(String password) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (password.isEmpty) {
      return 'Password contain upper case,lower case, 0-9,special charactr';
    } else {
      if (!regex.hasMatch(password)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }





  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formkey,
            child: Container(


              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3),
                  TextFormField(

                    keyboardType: TextInputType.name,
                    validator: (String? name)
                    {
                      if (name!.isEmpty) {
                        return"enter name";


                      }
                      else{
                        return null;
                      }
                    },
                    controller: _name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person),

                    ),
                  ),
                  SizedBox(height: 3),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? email)
                    {
                      if (!email!.contains('@')) {
                        return "Enter your email";

                      }
                      else{
                        return null;
                      }
                    },
                    controller: _email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),

                    ),
                  ),
                  SizedBox(height: 3),
                  TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    validator: (String? phone)

                    {
                      if (phone!.isEmpty) {
                        return "Enter your phonenumber";

                      }
                      else{
                        return null;
                      }
                    },
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Phone",
                      prefixIcon: Icon(Icons.phone_android),

                    ),
                  ),


                  SizedBox(height: 3),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (String? password) {
                      return validatePassword(password!);
                    },

                    controller: _password,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                      prefixIcon: Icon(Icons.lock),

                    ),
                  ),
                  SizedBox(height: 3),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (String? cpassword)
                    {
                      if (_password.text!=cpassword) {
                        return "Enter confirm password";

                      }
                      else{
                        return null;
                      }
                    },
                    controller: _cpassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password",
                   prefixIcon: Icon(Icons.lock),
                    ),
                  ),


                  SizedBox(height: 30),
                  ElevatedButton(onPressed: (){
                    if (_formkey.currentState!.validate()) {}
                    print(_name);
                    print(_email);
                    print(_phone);
                  }, child: Text("Signup")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("if you have an account !",),
                      Align(alignment: Alignment.bottomRight,
                          child: TextButton(onPressed: (){}, child: Text("Login")))
                    ],

                  )


                ],
              ),
            ),
          ),
        ),
      ) ,


     );
  }
}
