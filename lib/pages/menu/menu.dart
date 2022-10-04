import 'package:f290_ddm2_musical_challenge/pages/funny_page/funny_box.dart';
import 'package:f290_ddm2_musical_challenge/pages/xilophone.dart';
import 'package:flutter/material.dart';

import '../musical_challenge/musical_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Xilophone()));
            },
            child: Text('Xylophone'),
          ),
          SizedBox(
            height: 32,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FunnyBox()));
            },
            child: Text('FunnyBox'),
          ),
          SizedBox(
            height: 32,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MusicEmojChallenge()));
            },
            child: Text('Emoj Challenge'),
          ),
        ],
      ),
    );
  }
}
