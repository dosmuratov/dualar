import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            await player.setAsset('assets/audios/7-23.mp3');
            player.play();
          },
          icon: const Icon(Icons.play_arrow_sharp),
        ),
        IconButton(
          onPressed: player.pause,
          icon: const Icon(Icons.pause_outlined),
        ),
      ],
    );
  }
}
