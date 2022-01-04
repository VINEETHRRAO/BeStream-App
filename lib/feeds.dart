import 'package:flutter/material.dart';
import 'package:bestream/models/post.dart';
import 'package:bestream/models/user.dart';
import 'package:bestream/models/comment.dart';
import 'package:bestream/models/global.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  _HomeFeedState createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  static int page = 1;

  TextEditingController captionController = TextEditingController();
  

  static Post the_post = post1;
  Future navigateToLikesPage(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => getLikes(the_post.likes)));
  }

  Future navigateToCommentsPage(context) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => getComments(the_post.comments, the_post)));
  }

  @override
  Widget build(BuildContext context) {
    return getMain();
  }

  Widget getMain() {
    return Scaffold(
      backgroundColor: Color(0xff290B3A),
      body: Container(
          child: ListView(
        children: <Widget>[
          Divider(),
          Container(
            height: 15,
          ),
          Column(
            children: getPosts(context),
          )
        ],
      )),
    );
  }

  List<Widget> getPosts(BuildContext context) {
    List<Widget> posts = [];
    int index = 0;
    for (Post post in userPosts) {
      posts.add(getPost(context, post, index));
      index++;
    }
    return posts;
  }

  Widget getPost(BuildContext context, Post post, int index) {
    return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          backgroundImage: post.user.profilePicture,
                        ),
                      ),
                      Text(
                        post.user.username,
                      )
                    ],
                  ),
                  
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 300),
              decoration: BoxDecoration(
                  color: Color(0xff483053),
                  image:
                      DecorationImage(image: post.image, fit: BoxFit.fitWidth)),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment(0, 0),
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            size: 30,
                            color: post.isLiked ? Colors.red : Colors.black,
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: post.isLiked ? Colors.red : Colors.black,
                            onPressed: () {
                              setState(() {
                                userPosts[index].isLiked =
                                    post.isLiked ? false : true;
                                if (!post.isLiked) {
                                  post.likes.remove(user);
                                } else {
                                  post.likes.add(user);
                                }
                              });
                            },
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment(0, 0),
                        children: <Widget>[
                          Icon(
                            Icons.mode_comment,
                            size: 30,
                            color: Colors.black,
                          ),
                          IconButton(
                            icon: Icon(Icons.mode_comment),
                            color: Colors.black,
                            onPressed: () {
                              setState(() {
                                the_post = post;
                                navigateToCommentsPage(context);
                              });
                            },
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment(0, 0),
                        children: <Widget>[
                          Icon(
                            Icons.send,
                            size: 30,
                            color: Colors.black,
                          ),
                          IconButton(
                            icon: Icon(Icons.send),
                            color: Colors.black,
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                  Stack(
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Icon(
                        Icons.bookmark,
                        size: 30,
                        color: post.isSaved ? Colors.green : Colors.black,
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark),
                        color: post.isSaved ? Colors.green : Colors.black,
                        onPressed: () {
                          setState(() {
                            userPosts[index].isSaved =
                                post.isSaved ? false : true;
                            if (!post.isSaved) {
                              user.savedPosts.remove(post);
                            } else {
                              user.savedPosts.add(post);
                            }
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            FlatButton(
              child: Text(
                post.likes.length.toString() + " likes",
                style: textStyleBold,
              ),
              onPressed: () {
                setState(() {
                  the_post = post;
                  navigateToLikesPage(context);
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15, right: 10),
                  child: Text(
                    post.user.username,
                    style: textStyleBold,
                  ),
                ),
                Flexible(
                  child: Text(
                    post.description,
                    style: textStyle,
                    softWrap: true,
                  ),
                )
              ],
            ),
            FlatButton(
              child: Text(
                "View all " + post.comments.length.toString() + " comments",
                style: textStyleLigthGrey,
              ),
              onPressed: () {
                setState(() {
                  the_post = post;
                  navigateToCommentsPage(context);
                });
              },
            ),
            Divider(
              thickness: 15.0,
              color: Color(0xff290B37),
            ),
          ],
        ));
  }

  Widget getLikes(List<User> likes) {
    List<Widget> likers = [];
    for (User follower in likes) {
      likers.add(new Container(
          height: 45,
          padding: EdgeInsets.all(10),
          child: FlatButton(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    backgroundImage: follower.profilePicture,
                  ),
                ),
                Text(follower.username, style: textStyleBold),
              ],
            ),
            onPressed: () {},
          )));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Likes", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff290B37),
      ),
      body: Container(
        child: ListView(
          children: likers,
        ),
      ),
    );
  }
Widget getComments(List<Comment> likes, Post post) {
    List<Widget> likers = [];
    bool flag = true;
    DateTime now = DateTime.now();
    for (Comment comment in likes) {
      int hoursAgo = (now.hour) - (comment.dateOfComment.hour);

      likers.add(new Container(

          // height: 45,
          padding: EdgeInsets.all(10),
          child: FlatButton(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 30,
                      height: 30,
                      child: CircleAvatar(
                        backgroundImage: comment.user.profilePicture,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                  text: comment.user.username,
                                  style: textStyleBold),
                              new TextSpan(text: ' ', style: textStyle),
                              new TextSpan(
                                  text: comment.comment, style: textStyle),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10, top: 20),
                              child: Text(
                                hoursAgo.toString() + "h",
                                style: textStyleLigthGrey,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Reply",
                                style: textStyleLigthGrey,
                              ),
                              margin: EdgeInsets.only(right: 10, top: 20),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            onPressed: () {},
          )));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff290B37),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Comments',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        // ignore: unnecessary_new
        child: Builder(
          builder: (BuildContext context) {
            return Center(
              child: Column(
                children: [
                  const Divider(),
                 
                 Stack(alignment: AlignmentDirectional.centerEnd,
                   children: [caption(flag), Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(
                            0xff290B3A), //change background color of button
                        onPrimary: Colors.white,
                      ),
                      child: Icon(
                        Icons.add,
                      ),
                      onPressed: () {
                        addcmnt(post);
                      },
                    ),
                  ),],),
                   Column(
                    children: likers,
                  ),
                 
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void addcmnt(Post post) {
    var text = captionController.text;
    if (text != '') {
      Comment newc = new Comment(user, text, DateTime.now());
      post.comments.insert(0, newc);
      captionController.clear();

      Navigator.pop(context);
    }
    return;
  }

  
  Widget caption(bool flag) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(0xff290B3A),
        child: TextField(
          style: TextStyle(color: Colors.white,),
          controller: captionController,
          textAlign: TextAlign.left,
          decoration: const InputDecoration(
              labelText: 'ADD COMMENT',
              labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.comment,
                color: Colors.grey,
              ),
              hintStyle: TextStyle(color: Colors.grey)),
        ),
      ),
    ));
  }
}
