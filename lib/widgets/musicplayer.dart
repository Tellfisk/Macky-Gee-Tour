import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicPLayer extends StatefulWidget {
  final String filePath;

  const MusicPLayer({Key? key, required this.filePath}) : super(key: key);

  @override
  _MusicPLayerState createState() => _MusicPLayerState();
}

class _MusicPLayerState extends State<MusicPLayer> {
  int counter = 0;
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    openPlayer();
  }

  void openPlayer() async {
    var duration = await player.setAsset('assets/sounds/MackyGeeTour.mp3');
    player.play();
    await player.setLoopMode(LoopMode.one);
    print(duration);
  }

  @override
  Widget build(BuildContext context) {
    return const Text("Yooooo");
  }
}
