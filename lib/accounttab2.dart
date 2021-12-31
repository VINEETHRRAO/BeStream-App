import 'package:bestream/models/post.dart';
import 'package:flutter/material.dart';
import 'package:bestream/models/post.dart';
import 'package:bestream/models/user.dart';
import 'package:bestream/models/comment.dart';
import 'package:bestream/models/global.dart';

class AccountTab2 extends StatefulWidget {
  @override
  State<AccountTab2> createState() => _AccountTab2State();
}

class _AccountTab2State extends State<AccountTab2> {
  @override
  Widget build(BuildContext context) {
    return getMain();
  }

  Widget getMain() {
    return Scaffold(
      backgroundColor: Color(0xff290B37),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 3,
          children: getPosts(context),
        ),
      ),
    );
  }

  List<Widget> getPosts(BuildContext context) {
    List<Widget> posts = [];
    int n = 0;
    for (Post post in userPosts) {
      if (post.isSaved) {
        n = n + 1;
        posts.add(getPost(context, post));
      }
    }
    if (n == 0) {
      
      
      posts.add(getEmpty(context));
   
      return posts;
    } else 
      return posts;
    
  }

  Widget getPost(BuildContext context, Post post) {
    return Container(
      constraints: BoxConstraints(maxHeight: 282),
      decoration: BoxDecoration(
          color: Color(0xff483053),
          image: DecorationImage(image: post.image, fit: BoxFit.fill)),
    );
  }
    Widget getEmpty(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Nothing here to show :)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
