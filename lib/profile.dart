import 'package:bestream/accounttab.dart';
import 'package:bestream/accounttab2.dart';
import 'package:bestream/models/comment.dart';
import 'package:bestream/models/global.dart';
import 'package:bestream/models/post.dart';
import 'package:bestream/models/user.dart';
import 'package:flutter/material.dart';

class UserAccount extends StatefulWidget {
  

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {


  int numberofposts() {
    int n = 0;
    for (Post post in userPosts) {
      if (post.user == user) {
        n = n + 1;
      }
    }

    return n;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff483053),
        appBar: AppBar(
          backgroundColor: Color(0xff290B37),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Image.asset('assets/images/transparent.png'),
                  width: 200,
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.settings),
                    tooltip: 'Setiings',
                    iconSize: 40,
                    onPressed: () {},
                  ),
                ),
              ]),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: DecorationImage(
                        image: user.profilePicture,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),

                  // number of posts, followers, following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(numberofposts().toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Text(
                              'Posts',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(user.followers.length.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Text(
                              'Followers',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(user.following.length.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Text(
                              'Following',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Name and bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.username,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'i create apps & games',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                //  Text(
                  //  'm.youtube.com/mitchkoko/',
                    //style: TextStyle(color: Colors.blue),
               //   ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
             
                ],
              ),
            ),

            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(
                    Icons.bookmark,
                  ),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(children: [
                AccountTab1(),
                AccountTab2(),
              ]),
            )
          ],
        ),
      ),
    );
  }

}
