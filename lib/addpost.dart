import 'dart:io';

import 'package:bestream/feeds.dart';
import 'package:bestream/main.dart';
import 'package:bestream/models/comment.dart';
import 'package:bestream/models/global.dart';
import 'package:bestream/models/post.dart';
import 'package:bestream/models/user.dart';
import 'package:bestream/profile.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserOptions(),
    );
  }
}

class UserOptions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserOptionsState();
  }
}

class UserOptionsState extends State<UserOptions> {
//save the result of gallery file

  File? ifile;
  int i = 0;
  int n = 0;

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  void _setImage() async {
    final imageFile = File(await ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then((pickedFile) => pickedFile!.path));

    setState(() {
      ifile = imageFile;
    });
  }

  //display image selected from camera
  void imageSelectorCamera() async {
    var cameraFile = File(await ImagePicker()
        .pickImage(source: ImageSource.camera)
        .then((pickedFile) => pickedFile!.path));
    setState(() {
      ifile = cameraFile;
    });
  }

  TextEditingController captionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //display image selected from gallery

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose image')),
      ),
      body: SingleChildScrollView(
        // ignore: unnecessary_new
        child: new Builder(
          builder: (BuildContext context) {
            return Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          child: Icon(Icons.image),
                          onPressed: _setImage,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          child: Icon(Icons.camera),
                          onPressed: imageSelectorCamera,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  displaySelectedFile(ifile),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: caption(ifile),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      child: Icon(Icons.next_plan),
                      onPressed: addpost,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget displaySelectedFile(File? file) {
    return SizedBox(
      height: 300,
//child: new Card(child: new Text(''+galleryFile.toString())),
//child: new Image.file(galleryFile),
      child: file == null
          ? Padding(
              padding: const EdgeInsets.all(100.0),
              child: Text(
                'Sorry nothing selected!!',
                style: textStyleBold,
              ),
            )
          : Image.file(file),
    );
  }

  void addpost() {
    var file = ifile;
    int c = 0;

    var text = captionController.text;
    if (file != null && text != null) {
    //  Filer f = Filer(ifile!);
     // filer.insert(c, f);
      //c++;
      Post2 newpost = Post2(file, user, text, DateTime.now(), [],
          [], false, false);
      navigationTapped(0);
      newp.insert(0, newpost);
    }
    return;
  }

  Widget caption(File? file) {
    return Center(
        child: file != null
            ? TextField(
                controller: captionController,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                    labelText: 'ENTER CAPTION',
                    border: InputBorder.none,
                    hintText: 'Your text here..',
                    hintStyle: TextStyle(color: Colors.grey)),
              )
            : Container());
  }
}
