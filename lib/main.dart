import 'package:cat_tinder1/screens/HomeScreen.dart';
import 'package:cat_tinder1/screens/Second_screen.dart';
import 'package:cat_tinder1/screens/block.dart';
import 'package:cat_tinder1/screens/card.dart';
import 'package:cat_tinder1/screens/favorite.dart';
import 'package:cat_tinder1/screens/infoCard.dart';
import 'package:cat_tinder1/screens/swipe_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}
