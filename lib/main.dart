import 'package:flutter/material.dart';
import 'info.dart' as dua;

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
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(children: [
        Text(
          dua.kuranDualar.entries.first.value.elementAt(1),
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          dua.kuranDualar.entries.first.value.elementAt(0),
        ),
      ]),
    );
  }
}
