import 'package:f290_ddm2_musical_challenge/pages/funny_page/funny_box.dart';
import 'package:f290_ddm2_musical_challenge/pages/musical_challenge/musical_page.dart';
import 'package:flutter/material.dart';
import 'pages/menu/menu.dart';
import 'pages/xilophone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: MenuPage(),
    );
  }
}
