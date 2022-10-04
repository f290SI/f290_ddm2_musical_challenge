import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xilophone extends StatefulWidget {
  const Xilophone({Key? key}) : super(key: key);

  @override
  State<Xilophone> createState() => _XilophoneState();
}

class _XilophoneState extends State<Xilophone> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('XiloPhone')),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          botaoXilophone(cor: Colors.red, idSom: 1),
          botaoXilophone(cor: Colors.orange, idSom: 2),
          botaoXilophone(cor: Colors.yellow, idSom: 3),
          botaoXilophone(cor: Colors.green, idSom: 4),
          botaoXilophone(cor: Colors.blueAccent, idSom: 5),
          botaoXilophone(cor: Colors.blue.shade800, idSom: 6),
          botaoXilophone(cor: Colors.purple, idSom: 7),
        ],
      ),
    );
  }

  _executarAudio(String url) async {
    var player = AudioPlayer();
    await player.play(AssetSource(url));
  }

  Widget botaoXilophone({cor: Color, idSom: int}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          _executarAudio('sounds/note$idSom.wav');
        },
        child: Ink(color: cor),
      ),
    );
  }
}
