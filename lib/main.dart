import 'package:flutter/material.dart';
import 'widgets/musicplayer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(children: const [
          Text('Hello World'),
          MusicPLayer(filePath: "hei"),
        ]),
      ),
    );
  }
}
