import 'package:flutter/material.dart';
import 'package:netflix/screen/video_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<SearchScreen> {
  List searchJson = [
    {
      "img": "assets/images/search_1.jpg",
      "title": "Age of Samurai: Battle for Japan",
      "video": "assets/videos/video_1.mp4",
    },
    {
      "img": "assets/images/search_2.jpg",
      "title": "Aquaman",
      "video": "assets/videos/video_2.mp4",
    },
    {
      "img": "assets/images/search_3.jpg",
      "title": "Animals on the Loose: A You vs. Wild Movie",
      "video": "assets/videos/video_2.mp4",
    },
    {
      "img": "assets/images/search_4.jpg",
      "title": "Tribes of Europa",
      "video": "assets/videos/video_2.mp4",
    },
    {
      "img": "assets/images/search_5.jpg",
      "title": "The Yin-Yang Master: Dream Of Eternity",
      "video": "assets/videos/video_2.mp4",
    },
    {
      "img": "assets/images/search_6.jpg",
      "title": "Space Sweepers",
      "video": "assets/videos/video_2.mp4",
    },
    {
      "img": "assets/images/search_7.jpg",
      "title": "Fate: The Winx Saga",
      "video": "assets/videos/video_2.mp4",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    var size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Container(
        width: size.width,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.withOpacity(0.25)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.withOpacity(0.7),
              )),
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Top Searches",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
                children: List.generate(searchJson.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => VideoDetailScreen(
                                videoUrl: searchJson[index]['video'],
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: (size.width - 36) * 0.8,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 70,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              searchJson[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                    height: 70,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.2)))
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: (size.width - 30) * 0.4,
                              child: Text(
                                searchJson[index]['title'],
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: (size.width - 36) * 0.2,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.black.withOpacity(0.4)),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
