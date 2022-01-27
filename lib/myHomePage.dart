
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'post.dart';
import 'inputWidget.dart';
import 'postsList.dart';

class MyHomePage extends StatefulWidget {
//  const MyHomePage({ Key? key }) : super(key: key);
String name;
MyHomePage(this.name);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 // This widget is the root of your application.
   List<Post> posts = []; 

 void newPost(String text){
   setState(() {
     posts.add(new Post(text,this.widget.name));
   });
  
 }
  @override
  Widget build(BuildContext context) {

return Scaffold(
appBar: AppBar (title: Text(this.widget.name+" Page") ,),
body : Column(children: <Widget>[
  Expanded(child: PostsList(this.posts)),
  TextInputWidget(this.newPost)
]));

  }
}
