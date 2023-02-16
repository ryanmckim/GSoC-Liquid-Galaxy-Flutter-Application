import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _StateVideo();
}

class _StateVideo extends State<Video> {
  late YoutubePlayerController ytController;

  @override
  void initState() {
    const videoID = "ACN1oWT79gQ";
    ytController = YoutubePlayerController(
        initialVideoId: videoID,
        flags: const YoutubePlayerFlags(
            autoPlay: false, mute: false, isLive: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Liquid Galaxy")),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 20),
          const Text(
            "Introduction :)",
            style: TextStyle(fontSize: 30),
          ),
          YoutubePlayer(
            controller: ytController,
            showVideoProgressIndicator: true,
          ),
          const SizedBox(height: 40),
          const Text("Flutter & VS Code Setup Video (Coming soon!)",
              style: TextStyle(fontSize: 30), textAlign: TextAlign.center)
        ]));
  }
}
