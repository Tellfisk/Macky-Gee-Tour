import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicPlayer extends StatefulWidget {
  final String filePath;

  const MusicPlayer({Key? key, required this.filePath}) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  int counter = 0;
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    openPlayer();
  }

  void openPlayer() async {
    var duration = await player.setAsset('assets/sounds/MackyGeeTour.mp3');
    await player.setLoopMode(LoopMode.one);
    print(duration);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<PlayerState>(
        stream: player.playerStateStream,
        builder: (context, snapshot) {
          final playerState = snapshot.data;
          final processingState = playerState?.processingState;
          final playing = playerState?.playing;
          if (processingState == ProcessingState.loading ||
              processingState == ProcessingState.buffering) {
            return Container(
              margin: EdgeInsets.all(8.0),
              width: 32.0,
              height: 32.0,
              child: CircularProgressIndicator(),
            );
          } else if (playing != true) {
            return IconButton(
              icon: const Text(
                "Macky Gee - Tour",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 120),
              ),
              iconSize: 512.0,
              onPressed: player.play,
            );
          } else if (processingState != ProcessingState.completed) {
            return IconButton(
              icon: Icon(Icons.pause),
              iconSize: 512.0,
              onPressed: player.pause,
            );
          } else {
            return IconButton(
              icon: const Icon(Icons.replay),
              iconSize: 64.0,
              onPressed: () => player.seek(Duration.zero),
            );
          }
        },
      ),
    );
  }
}
