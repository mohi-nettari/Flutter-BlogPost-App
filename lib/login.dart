import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/myHomePage.dart';

class MyLoginPage extends StatelessWidget {
 // const MyLoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar (title: Text("Login Page") ),
body : LoginBody());

  }
}

class LoginBody extends StatefulWidget {
 // const LoginBody({ Key? key }) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();

}

class _LoginBodyState extends State<LoginBody> {
  late String name;
  TextEditingController controller = new TextEditingController();

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

void click (){
  this.name = controller.text;
  controller.clear();
  FocusScope.of(context).unfocus();
  Navigator.push(context, MaterialPageRoute(builder:(context)=> MyHomePage(this.name)));

}

  @override
  Widget build(BuildContext context) {
    return Align(
    alignment : Alignment.center,
    child : Padding(padding: EdgeInsets.all(10),
    child: TextField(controller: this.controller,
    decoration: InputDecoration(prefixIcon:Icon(Icons.person_outlined)
    ,labelText: "Enter your name :", 
    border:OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange,width: 5,)),
    suffixIcon : IconButton(icon : Icon(Icons.login),
   color: Colors.black,
    tooltip: "log in",
    splashColor: Colors.deepOrange,
    onPressed: this.click )  )))
    );
  }
}