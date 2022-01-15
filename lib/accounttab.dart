import 'package:bestream/feeds.dart';
import 'package:bestream/models/post.dart';
import 'package:bestream/userposts.dart';
import 'package:flutter/material.dart';
import 'package:bestream/models/post.dart';
import 'package:path/path.dart' as path;
import 'package:bestream/models/user.dart';
import 'package:bestream/models/comment.dart';
import 'package:bestream/models/global.dart';

class AccountTab1 extends StatefulWidget {
  @override
  State<AccountTab1> createState() => _AccountTab1State();
}

class _AccountTab1State extends State<AccountTab1> {
  static Post the_post = post1;

  Future navigateToPage(BuildContext context, Post2 post, int index) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Userposts()));
  }

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
    int index = 0;
   
    for (Post2 post in newp) {
      if (post.user == user) {
        n = n + 1;
        index = index + 1;
        posts.add(getPost(context, post, index));
      }
    }
    if (n == 0) {
      posts.add(getEmpty(context));

      return posts;
    } else {
      return posts;
    }
  }

  Widget getPost(BuildContext context, Post2 post, int index) {
    return InkWell(
      child: Container(
        color: Colors.white,
        constraints: BoxConstraints(maxHeight: 300),
        child: Image.file(post.image,fit: BoxFit.cover,),
      ),
      onTap: () {
        setState(() {
          
          navigateToPage(context, post, index);
        });
      },
    );
  }

  Widget getEmpty(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Nothing here to show :)",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
