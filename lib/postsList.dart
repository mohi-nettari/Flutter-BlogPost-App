import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'post.dart';

class PostsList extends StatefulWidget {
final List<Post> itemsList;
PostsList(this.itemsList);

  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {

void like(Function callback){
  this.setState(() {
    callback();
  });
}

  @override
  // TODO: implement context
  BuildContext get context => super.context;
    @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: this.widget.itemsList.length,
     itemBuilder: (context,index) {
       var post = this.widget.itemsList[index];
       return Card(
                child: Row(children: <Widget>[
                  Expanded(child: ListTile(title: Text(post.body),subtitle: Text(post.author))),

                  Row(children: <Widget>[Container(child: Text(post.likes.toString(),
                  style: TextStyle(fontSize: 20)),padding: EdgeInsets.fromLTRB(5, 8, 5, 8))
                  ,IconButton(icon:  Icon(Icons.thumb_up),onPressed: () => this.like(post.likePost),color: post.isTheUserLiked ? Colors.green : Colors.black,)

                  ],)
                  
                  ]),

       );

     },
     
    );
  }
}