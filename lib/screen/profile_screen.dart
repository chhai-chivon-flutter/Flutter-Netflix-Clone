import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.black,
      ),
      body: _buildBody,
      backgroundColor: Colors.black,
    );
  }

  Widget get _buildBody {
    return Center(
      child: Container(
        child: Text("Profile"),
      ),
    );
  }
}
