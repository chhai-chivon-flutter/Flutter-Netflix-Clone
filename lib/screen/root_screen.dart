import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:netflix/screen/coming_soon_screen.dart';
import 'package:netflix/screen/download_screen.dart';
import 'package:netflix/screen/home_screen.dart';
import 'package:netflix/screen/search_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<RootScreen> {
  int activeTab = 0;

  List items = [
    {"icon": AntDesign.home, "text": "Home"},
    {"icon": AntDesign.playcircleo, "text": "Coming Soon"},
    {"icon": AntDesign.search1, "text": "Search"},
    {"icon": AntDesign.download, "text": "Downloads"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: _buildBottomNavigationBar,
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return IndexedStack(
      index: activeTab,
      children: [
        HomeScreen(),
        ComingSoonScreen(),
        SearchScreen(),
        DownloadScreen()
      ],
    );
  }

  Widget get _buildBottomNavigationBar {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    items[index]['icon'],
                    color: activeTab == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    items[index]['text'],
                    style: TextStyle(
                        fontSize: 10,
                        color: activeTab == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
