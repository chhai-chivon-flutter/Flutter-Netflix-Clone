import 'package:flutter/material.dart';
import 'screen/root_screen.dart';

void main() {
  runApp(app);
}

Widget get app {
  return MaterialApp(
    title: 'Flutter Netflix Clone',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: RootScreen(),
    debugShowCheckedModeBanner: false,
  );
}
