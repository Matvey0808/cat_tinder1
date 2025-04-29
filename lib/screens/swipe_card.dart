import 'package:cat_tinder1/screens/card.dart';
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

class TinderScreen extends StatelessWidget {
  final List<Widget> cards = [
    CatCard1(name: "Бобик", image: "assets/images/catTINDER.jpeg"),
    CatCard1(name: "Линя", image: "assets/images/catTINDER3.png"),
    CatCard1(name: "Кирпич", image: "assets/images/catTINDER5.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TCard(
          cards: cards,
        ),
      ),
    );
  }
}
