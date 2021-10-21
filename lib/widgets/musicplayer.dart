import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class MusicPLayer extends StatefulWidget {
  final String filePath;

  const MusicPLayer({Key? key, required this.filePath}) : super(key: key);

  @override
  _MusicPLayerState createState() => _MusicPLayerState();
}

class _MusicPLayerState extends State<MusicPLayer>
    with SingleTickerProviderStateMixin {
  //int counter = 0;
  late AnimationController iconController;
  AssetsAudioPlayer player = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    Audio aud = Audio('assets/sounds/MackyGeeTour.mp3');
    player.open(aud);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
