
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'post.dart';

import 'package:flutter/material.dart';

class User {
  String username;
  List<Post2> posts;
  AssetImage profilePicture;
  List<User> followers;
  List<User> following;
  List<Post2> savedPosts2;
  List<Post> savedPosts;
  bool hasStory;

  User(this.username, this.profilePicture, this.followers, this.following, this.posts,this.savedPosts, this.savedPosts2, this.hasStory);
}