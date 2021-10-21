import 'package:flutter/material.dart';
import 'widgets/musicplayer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macky Gee still on Tour?',
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
