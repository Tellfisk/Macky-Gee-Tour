import 'package:flutter/material.dart';
import 'widgets/musicplayer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              MusicPlayer(filePath: 'assets/sounds/MackyGeeTour.mp3'),
            ]),
      ),
    );
  }
}
