import 'package:flutter/material.dart';
import 'user.dart';
import 'post.dart';
import 'comment.dart';

//  - lib/assets/photo4.jpg
//  - lib/assets/photo5.jpg
//  - lib/assets/profile3.png
//  - lib/assets/profile4.png
//  - lib/assets/profile6.jpg

TextStyle textStyle = new TextStyle(fontFamily: 'Gotham');
TextStyle textStyleBold = new TextStyle(
    fontFamily: 'Gotham', fontWeight: FontWeight.bold, color: Colors.black);
TextStyle textStyleLigthGrey =
    new TextStyle(fontFamily: 'Gotham', color: Colors.grey);
// AppbarParams appBarParams = new AppbarParams("Instagram", []);

Post post1 = new Post(
    new AssetImage('assets/images/r15.jpg'),
    user,
    "My first post",
    DateTime.now(),
    [follower1, follower2, follower3],
    [],
    true,
    true);
final User user = new User(
    'vineeth',
    AssetImage('assets/images/r15.jpg'),
    [follower1, follower2, follower3],
    [follower1, follower2, follower3, follower4, follower5, follower6],
    [],
    [],
    false);
User follower1 = new User(
    'the_rock', AssetImage('assets/images/r15.jpg'), [], [], [], [], true);
User follower2 = new User(
    'miley_cyrus', AssetImage('assets/images/r15.jpg'), [], [], [], [], false);
User follower3 = new User(
    'kim_k', AssetImage('assets/images/r15.jpg'), [], [], [], [], true);
User follower4 = new User(
    'daredevil', AssetImage('assets/images/r15.jpg'), [], [], [], [], true);
User follower5 = new User(
    'batman', AssetImage('assets/images/r15.jpg'), [], [], [], [], true);
User follower6 = new User('peter_griffin', AssetImage('assets/images/r15.jpg'),
    [], [], [], [], false);
List<Post> newPosts = [];
List<Post> userPosts = [
  new Post(
      new AssetImage('assets/images/r5.jpg'),
      user,
      "My first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(follower1, "This was amazing!", DateTime.now(), false),
        new Comment(follower2, "Cool one", DateTime.now(), false),
      ],
      true,
      true),
  new Post(
      new AssetImage('assets/images/r8.jpg'),
      follower1,
      "This is such a great post though",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r6.jpg'),
      follower5,
      "How did I even take this photo??",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r8.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r8.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r5.jpg'),
      user,
      "My first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(follower1, "This was amazing!", DateTime.now(), false),
        new Comment(follower2, "Cool one", DateTime.now(), false),
      ],
      true,
      true),
  new Post(
      new AssetImage('assets/images/r8.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r5.jpg'),
      user,
      "My first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(follower1, "This was amazing!", DateTime.now(), false),
        new Comment(follower2, "Cool one", DateTime.now(), false),
      ],
      true,
      true),
  new Post(
      new AssetImage('assets/images/r8.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r6.jpg'),
      follower5,
      "How did I even take this photo??",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r8.jpg'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/r5.jpg'),
      user,
      "My first post",
      DateTime.now(),
      [follower1, follower2, follower3, follower4, follower5, follower6],
      [
        new Comment(follower1, "This was amazing!", DateTime.now(), false),
        new Comment(follower2, "Cool one", DateTime.now(), false),
      ],
      true,
      true),
  new Post(
      new AssetImage('assets/images/r6.jpg'),
      follower5,
      "How did I even take this photo??",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
        new Comment(follower5, "I'm batman", DateTime.now(), false)
      ],
      false,
      false),
  new Post(
      new AssetImage('assets/images/post2.png'),
      follower3,
      "Found this in my backyard. \nThought I'd post it jk lol lol lolol",
      DateTime.now(),
      [user, follower2, follower3, follower4, follower5],
      [
        new Comment(follower3, "This was super cool!", DateTime.now(), false),
        new Comment(follower1, "I can't believe it's not \nbutter!",
            DateTime.now(), false),
        new Comment(user, "I know rite!", DateTime.now(), false),
      ],
      false,
      false),
];

Post postempty = new Post(
    new AssetImage('assets/images/logo.jpeg'),
    follower3,
    "",
    DateTime.now(),
    [user, follower2, follower3, follower4, follower5],
    [],
    false,
    false);
Post nully = new Post(
    new AssetImage('assets/images/logo.jpeg'),
    follower3,
    "",
    DateTime.now(),
    [user, follower2, follower3, follower4, follower5],
    [],
    false,
    false);
