import 'package:flutter/material.dart';

class MusicEmojChallenge extends StatefulWidget {
  const MusicEmojChallenge({Key? key}) : super(key: key);

  @override
  State<MusicEmojChallenge> createState() => _MusicEmojChallengeState();
}

class _MusicEmojChallengeState extends State<MusicEmojChallenge> {
  var musicas = ['Pense em mim', 'Fuscão Preto'];

  _mostrarNomeMusica(int index) {
    var snackBar = SnackBar(
      content: Text('${musicas[index]}'),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emoj Music Challenge')),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              _mostrarNomeMusica(0);
            },
            child: const Text(
              '\u{1F914}\u{261D}\u{1F62D}\u{261D}\u{1F4DE}\u{261D}\u{1F6AB}\u{1F6AB}\u{1F4DE}\u{1F449}',
              style: TextStyle(fontSize: 60),
            ),
          ),
          SizedBox(height: 24,),
          TextButton(
            onPressed: () {
              _mostrarNomeMusica(1);
            },
            child: const Text(
              '\u{1F62D} \u{1F97A} \u{1F92C}',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ],
      ),
    );
  }
}

//26-09
//Edmilson, Jonas Eduardo, Jose Carrlos, Jonas
//Willian, Vitor, Nicolas, Wagner, Silvio, Jean, Luis ALberto, Julio
