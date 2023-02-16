import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _StateVideo();
}

class _StateVideo extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white, body: Center(child: Text("video")));
  }
}
