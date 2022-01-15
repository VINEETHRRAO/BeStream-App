// ignore_for_file: unnecessary_new

import 'dart:io';
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'user.dart';
import 'post.dart';
import 'comment.dart';

//  - lib/assets/photo4.jpg
//  - lib/assets/photo5.jpg
//  - lib/assets/profile3.png
//  - lib/assets/profile4.png
//  - lib/assets/profile6.jpg

List<Post2> newp = [];

TextStyle textStyle = new TextStyle(fontFamily: 'Gotham');
TextStyle textStyleBold = new TextStyle(
    fontFamily: 'Gotham', fontWeight: FontWeight.bold, color: Colors.black);
TextStyle textStyleLigthGrey =
    new TextStyle(fontFamily: 'Gotham', color: Colors.grey);
// AppbarParams appBarParams = new AppbarParams("Instagram", []);

Post post1 = new Post(
    new AssetImage('assets/images/r1.jpg'),
    user,
    "My first post",
    DateTime.now(),
    [follower1, follower2, follower3],
    [],
    true,
    true);
    Post2 post2 = new Post2(
    File('assets/images/r1.jpg'),
    user,
    "My first post",
    DateTime.now(),
    [follower1, follower2, follower3],
    [],
    true,
    true);
final User user = new User(
    'vineeth',
    AssetImage('assets/images/r10.jpg'),
    [follower1, follower2, follower3],
    [follower1, follower2, follower3, follower4, follower5, follower6],
    [],
    [],
    [],
    false);
// ignore: unnecessary_new
User follower1 = new User(
    'the_rock', AssetImage('assets/images/r2.jpg'), [], [], [],[], [], true);
User follower2 = new User(
    'miley_cyrus', AssetImage('assets/images/r3.jpg'), [], [], [],[], [], false);
User follower3 = new User(
    'kim_k', AssetImage('assets/images/r4.jpg'), [], [], [], [],[], true);
User follower4 = new User(
    'daredevil', AssetImage('assets/images/r5.jpg'), [], [], [], [],[], true);
User follower5 = new User(
    'batman', AssetImage('assets/images/r11.jpg'), [], [], [],[], [], true);
User follower6 = new User('peter_griffin', AssetImage('assets/images/r7.jpg'),
    [], [], [],[], [], false);


Post postempty = new Post(AssetImage('assets'), follower3, "", DateTime.now(),
    [user, follower2, follower3, follower4, follower5], [], false, false);
Post nully = new Post(
    AssetImage('assets/images/logo.jpeg'),
    follower3,
    "",
    DateTime.now(),
    [user, follower2, follower3, follower4, follower5],
    [],
    false,
    false);
List<Post> userPosts = [
  new Post(
      AssetImage('assets/images/r6.jpg'),
      follower2,
      "My veryyy first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(follower1, "This was amazing!", DateTime.now()),
        new Comment(follower2, "Cool one", DateTime.now()),
      ],
      false,
      false),
  Post(
      AssetImage('assets/images/r9.jpg'),
      follower1,
      "This is such a great post though",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r6.jpg'),
      follower5,
      "How did I even take this photo??",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r15.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r17.jpg'),
      follower4,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r5.jpg'),
      follower4,
      "My first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(follower1, "This was amazing!", DateTime.now()),
        new Comment(follower2, "Cool one", DateTime.now()),
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r11.jpg'),
      follower5,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
          follower1,
          "I can't believe it's not \nbutter!",
          DateTime.now(),
        ),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r16.jpg'),
      follower5,
      "My first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(
          follower1,
          "This was amazing!",
          DateTime.now(),
        ),
        new Comment(
          follower2,
          "Cool one",
          DateTime.now(),
        ),
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r2.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(
          follower3,
          "This was super cool!",
          DateTime.now(),
        ),
        new Comment(
          follower1,
          "I can't believe it's not \nbutter!",
          DateTime.now(),
        ),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r16.jpg'),
      follower5,
      "How did I even take this photo??",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r4.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r5.jpg'),
      follower2,
      "My first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(follower1, "This was amazing!", DateTime.now()),
        new Comment(follower2, "Cool one", DateTime.now()),
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/r6.jpg'),
      follower5,
      "How did I even take this photo??",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
        new Comment(follower5, "I'm batman", DateTime.now())
      ],
      false,
      false),
  new Post(
      AssetImage('assets/images/post2.png'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now()),
        new Comment(
            follower1, "I can't believe it's not \nbutter!", DateTime.now()),
        new Comment(user, "I know rite!", DateTime.now()),
      ],
      false,
      false),
];
