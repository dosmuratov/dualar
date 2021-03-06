import 'package:flutter/material.dart';
import 'info.dart' as dua;
import 'player.dart';
import 'package:screenshot/screenshot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Куран Дуалары',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Куран Дуалары'),
        ),
        body: const Card(),
      ),
    );
  }
}

ScreenshotController screenshotController = ScreenshotController();

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.deepOrange,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Text(
            dua.kuranDualar.entries.first.value.elementAt(1),
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            dua.kuranDualar.entries.first.value.elementAt(0),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Player(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            ],
          ),
        ],
      ),
    );
  }
}
