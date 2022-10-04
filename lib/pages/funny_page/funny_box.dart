import 'package:f290_ddm2_musical_challenge/pages/funny_page/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FunnyBox extends StatefulWidget {
  const FunnyBox({Key? key}) : super(key: key);

  @override
  State<FunnyBox> createState() => _FunnyBoxState();
}

class _FunnyBoxState extends State<FunnyBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('FunnyBox'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                FunnyButton(cor: Colors.green, playSoundCallBack: (){}),
                FunnyButton(cor: Colors.greenAccent),
                FunnyButton(cor: Colors.greenAccent.shade400),
                FunnyButton(cor: Colors.greenAccent.shade700)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                FunnyButton(cor: Colors.green, playSoundCallBack: (){}),
                FunnyButton(cor: Colors.greenAccent, playSoundCallBack: (){}),
                FunnyButton(cor: Colors.greenAccent.shade400, playSoundCallBack: (){}),
                FunnyButton(cor: Colors.greenAccent.shade700, playSoundCallBack: (){})
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                FunnyButton(cor: Colors.green, playSoundCallBack: (){}),
                FunnyButton(cor: Colors.greenAccent, playSoundCallBack: (){}),
                FunnyButton(cor: Colors.greenAccent.shade400, playSoundCallBack: (){}),
                FunnyButton(cor: Colors.greenAccent.shade700, playSoundCallBack: (){})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
