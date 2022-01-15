import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

late double ht;
double wdt = 0.0;

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  List videos = [
    'https://media.istockphoto.com/videos/closeup-a-butterfly-flutters-its-wings-on-the-hand-of-a-little-girl-video-id1135978200',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'http://192.168.0.8:9000/exercise',
    'http://192.168.0.8:9000/sports',
    'http://192.168.0.8:9000/learning',
    'http://192.168.0.8:9000/driving',
    'http://192.168.0.8:9000/cooking',
    'http://192.168.0.8:9000/dancing',
    'http://192.168.0.8:9000/exercise',
    'http://192.168.0.8:9000/sports',
    'http://192.168.0.8:9000/learning',
    'http://192.168.0.8:9000/driving',
  ];

  List images = [
    'https://static.vecteezy.com/system/resources/previews/000/185/160/original/streaming-live-news-background-template-vector.jpg',
    'https://d20jno9famfelf.cloudfront.net/_1200x630_crop_center-center_82_none/Gradience-Live-Stream-Will-Begin-Soon_CNM-HD.jpg?mtime=20200505172526',
    'https://i.ytimg.com/vi/EJLMq8kMREQ/maxresdefault.jpg',
    'https://i.ytimg.com/vi/Pzjpy-oK7z8/maxresdefault.jpg',
    'https://i.ytimg.com/vi/EJLMq8kMREQ/maxresdefault.jpg',
    'https://static.vecteezy.com/system/resources/previews/000/185/160/original/streaming-live-news-background-template-vector.jpg',
    'https://i.ytimg.com/vi/GZcS4_V1JZs/maxresdefault.jpg',
    'https://i.ytimg.com/vi/EJLMq8kMREQ/maxresdefault.jpg',
    'https://i.ytimg.com/vi/Pzjpy-oK7z8/maxresdefault.jpg',
    'https://i.ytimg.com/vi/EJLMq8kMREQ/maxresdefault.jpg',
    'https://i.ytimg.com/vi/Pzjpy-oK7z8/maxresdefault.jpg',
  ];
  List titles = [
    'Cooking',
    'Dance',
    'Exercise',
    'Sports',
    'Learning',
    'Driving',
    'Dance',
    'Exercise',
    'Sports',
    'Exercise',
    'Sports',
  ];
  List description = [
    'Learn Restaurant style Cooking',
    'Dancing in Concert with Friends',
    'Daily Exercise to keep yourself Healthy',
    'Climb wall as fast as you can',
    "Let's Learn and Sketch something new",
    'Long Drive after few months',
    'Learn Restaurant style Cooking',
    'Dancing in Concert with Friends',
    'Daily Exercise to keep yourself Healthy',
    'Climb wall as fast as you can',
    "Let's Learn and Sketch something new",
  ];
  List times = [
    '0:27',
    '0:12',
    '0:15',
    '0:22',
    '0:21',
    '0:15',
    '0:12',
    '0:15',
    '0:22',
    '0:21',
    '0:15',
  ];

  @override
  Widget build(BuildContext context) {
    ht = MediaQuery.of(context).size.height / 1000;
    wdt = MediaQuery.of(context).size.width / 1000;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        brightness: Brightness.light,
        title: Row(
          children: [
            Icon(
              Icons.tv_outlined,
              color: Colors.purple,
            ),
            Text(
              ' StreamZ',
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                child: Stack(
                  children: [
                    Image.network(
                      images[index],
                      height: 280 * ht,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: 20 * ht,
                      right: 40 * wdt,
                      child: Container(
                        padding: EdgeInsets.all(5 * ht),
                        color: Colors.grey[900],
                        child: Text(
                          times[index],
                          style: TextStyle(
                            color: Colors.grey[50],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  setState(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Videos(
                            imageS: images[index],
                            videoS: videos[index],
                            titleS: titles[index],
                            descriptionS: description[index],
                            image: images,
                            video: videos,
                            title: titles,
                            description: description,
                            time: times,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              rows(
                images[index],
                titles[index],
                description[index],
              ),
              Container(
                color: Color(0xff290B3A),
                height: 15,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget rows(img, tlt, desc) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 15 * wdt, vertical: 10 * ht),
          child: Container(
            height: 50 * ht,
            width: 50 * ht,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tlt,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 3 * ht,
            ),
            Text(
              desc,
              softWrap: true,
            ),
          ],
        )
      ],
    );
  }
}

class Videos extends StatefulWidget {
  final String imageS, videoS, titleS, descriptionS;
  final List image, video, title, description, time;
  const Videos({
    required this.imageS,
    required this.videoS,
    required this.titleS,
    required this.descriptionS,
    required this.image,
    required this.video,
    required this.title,
    required this.description,
    required this.time,
  });
  @override
  _VideosState createState() => _VideosState(
        imageS: this.imageS,
        videoS: this.videoS,
        titleS: this.titleS,
        descriptionS: this.descriptionS,
        images: this.image,
        videos: this.video,
        titles: this.title,
        descriptions: this.description,
        times: time,
      );
}

class _VideosState extends State<Videos> {
  String imageS, videoS, titleS, descriptionS;
  List images, videos, titles, descriptions, times;
  _VideosState({
    required this.imageS,
    required this.videoS,
    required this.titleS,
    required this.descriptionS,
    required this.images,
    required this.videos,
    required this.titles,
    required this.descriptions,
    required this.times,
  });
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(videoS)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.grey[900],
        brightness: Brightness.dark,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Stack(
                      children: [
                      
                        Container(
                            height: 200,
                            color: Colors.black,
                            child: Image(image: NetworkImage(imageS)),
                          ),
                            Center(child: Container(height:200, child: Image(image: NetworkImage("https://i1.wp.com/www.meatmarket.in/wp-content/uploads/2020/01/loading-bar-animated-gif-transparent-background-3.gif?ssl=1"),))),
                      ],
                    ),
              ),
              Positioned(
                top: 140,
                right: 16,
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
              ),
            ],
          ),
          rows(
            imageS,
            titleS,
            descriptionS,
          ),
          Divider(
            color: Colors.grey[300],
            height: 2 * ht,
            thickness: 2,
          ),
          Container(
            color: Color(0xff290B3A),
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return images[index] == imageS
                    ? Container()
                    : Column(
                        children: [
                          GestureDetector(
                            child: Stack(
                              children: [
                                Image.network(
                                  images[index],
                                  height: 280 * ht,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                  bottom: 20 * ht,
                                  right: 40 * wdt,
                                  child: Container(
                                    padding: EdgeInsets.all(5 * ht),
                                    color: Colors.grey[900],
                                    child: Text(
                                      times[index],
                                      style: TextStyle(
                                        color: Colors.grey[50],
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                _controller.pause();
                              
                                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Videos(
                            imageS: images[index],
                            videoS: videos[index],
                            titleS: titles[index],
                            descriptionS: descriptions[index],
                            image: images,
                            video: videos,
                            title: titles,
                            description: descriptions,
                            time: times,
                          ),
                        ),
                      );
                              });
                            },
                          ),
                          rows(
                            images[index],
                            titles[index],
                            descriptions[index],
                          ),
                          SizedBox(height: 10 * ht),
                          Container(
                            color: Color(0xff290B3A),
                            height: 15,
                          ),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget rows(img, tlt, desc) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 15 * wdt, vertical: 10 * ht),
          child: Container(
            height: 50 * ht,
            width: 50 * ht,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tlt,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 3 * ht,
            ),
            Text(desc),
          ],
        )
      ],
    );
  }
}
