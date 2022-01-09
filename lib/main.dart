import 'package:bestream/addpost.dart';
import 'package:bestream/explore.dart';
import 'package:bestream/feeds.dart';
import 'package:bestream/profile.dart';
import 'package:bestream/shop.dart';
import 'package:bestream/splash.dart';
import 'package:bestream/stream.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BESTREAM',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

PageController pageController = new PageController(initialPage: 0);

class _HomeState extends State<Home> {
  int _page = 0;

  Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) =>UserAccount()));
}

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      appBar: AppBar(
        backgroundColor: Color(0xff290B37),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.settings),
                  tooltip: 'Setiings',
                  iconSize: 40,
                  onPressed: () {
                    
                  },
                ),
              ),
              Container(
                child: Image.asset('assets/images/transparent.png'),
                width: 200,
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.person,
                      color: (_page == 7) ? Colors.grey : Colors.white),
                  tooltip: 'profile',
                  iconSize: 40,
                  onPressed: () {
                   navigateToSubPage(context);
                  },
                ),
              ),
            ]),
      ),
      body: new PageView(
        children: [
          new Container(
            color: Colors.black,
            child: HomeFeed(),
          ),
          new Container(
            color: Colors.black,
            child: ExplorePage(),
          ),
          new Container(
            color: Colors.black,
            child: UserOptions(),
          ),
          new Container(
            color: Colors.black,
             child: VideoApp(),
          ),
          new Container(
            color: Colors.black,
            child: ShopPage(),
          ),
          new Container(
            color: Colors.black,
          ),
          new Container(
            color: Colors.black,
            child: HomeFeed(),
          ),
        ],
        controller: pageController,
        physics: new NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff290B37),
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
            title: new Container(height: 0.0),
            icon: Icon(Icons.home,
                color: (_page == 0) ? Colors.grey : Colors.white),
          ),
          BottomNavigationBarItem(
            title: new Container(height: 0.0),
            icon: Icon(Icons.search_rounded,
                color: (_page == 1) ? Colors.grey : Colors.white),
          ),
          BottomNavigationBarItem(
            title: new Container(height: 0.0),
            icon: Icon(Icons.add_circle,
                color: (_page == 2) ? Colors.grey : Colors.white),
          ),
          BottomNavigationBarItem(
            title: new Container(height: 0.0),
            icon: Icon(Icons.tv_rounded,
                color: (_page == 3) ? Colors.grey : Colors.white),
          ),
          BottomNavigationBarItem(
            title: new Container(height: 0.0),
            icon: Icon(Icons.shop,
                color: (_page == 4) ? Colors.grey : Colors.white),
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
