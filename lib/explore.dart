import 'package:bestream/feeds.dart';
import 'package:bestream/models/post.dart';
import 'package:bestream/userposts.dart';
import 'package:flutter/material.dart';
import 'package:bestream/models/post.dart';
import 'package:bestream/models/user.dart';
import 'package:bestream/models/comment.dart';
import 'package:bestream/models/global.dart';

import 'allposts.dart';

class ExplorePage extends StatefulWidget {
 const ExplorePage({Key? key}) : super(key: key);
 @override
 _ExplorePageState createState() => _ExplorePageState();
}
class _ExplorePageState extends State<ExplorePage> {
  static Post the_post = post1;
 

  Future navigateToPage(BuildContext context, Post post,int index) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Allpost()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.purple[800],
         title: Container(
           width:350,
           height:26,
           color: Colors.white,
           child: TextField (  
  textAlign: TextAlign.center,
  decoration: InputDecoration(  
    border: InputBorder.none,  
    prefixIcon: Icon(Icons.search),
    
    hintText: 'Serach here'  ,
     hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
     contentPadding:
            EdgeInsets.only(left: 38, bottom: 7, top: 11, right: 15),
    

  ),  
) 
         )

          ),
     
         body:  Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 3,
          children: getPosts(context),
               
              
              
          )),  
    );  
  } 
  
  List<Widget> getPosts(BuildContext context) {
    List<Widget> posts = [];
    int n = 0;
    int index = 0;
    for (Post post in userPosts) {
     
        n = n + 1;
        index = index + 1;
        posts.add(getPost(context, post, index));
      
    }
    if (n == 0) {
      posts.add(getEmpty(context));

      return posts;
    } else {
      return posts;
    }
  }

  Widget getPost(BuildContext context, Post post,int index) {
    return InkWell(
      child:   Container(
        constraints: BoxConstraints(maxHeight: 300),
        child: Image(image: post.image),
      ),
      onTap: () {
        setState(() {
          the_post = post;
          navigateToPage(context, the_post, index);
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
    
   