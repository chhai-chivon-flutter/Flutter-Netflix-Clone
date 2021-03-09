import 'package:flutter/material.dart';

import 'screen/home_screen.dart';
import 'screen/root_app.dart';

void main() {
  runApp(app);
}

Widget get app {
  return MaterialApp(
      title: 'Flutter Netflix Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootApp(),
      debugShowCheckedModeBanner: false,
    ); 
}