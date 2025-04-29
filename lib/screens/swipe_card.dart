import 'package:cat_tinder1/screens/card.dart';
import 'package:cat_tinder1/screens/infoCard.dart';
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

class TinderScreen extends StatefulWidget {
  const TinderScreen({super.key});

  @override
  State<TinderScreen> createState() => _TinderScreenState();
}

class _TinderScreenState extends State<TinderScreen> {
  final List<Map<String, dynamic>> catDataList = [
    {
      "name": "Бобик",
      "image": "assets/images/catTINDER.jpeg",
      "onInfoPressed": (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoCard1(
                name: "Информация о Бобике",
                image: "assets/images/catTINDER.jpeg"),
          ),
        );
      },
    },
    {
      "name": "Бобр",
      "image": "assets/images/catTINDER3.png",
      "onInfoPressed": (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoCard1(
                name: "Информация о Бобре",
                image: "assets/images/catTINDER3.png"),
          ),
        );
      },
    },
    {
      "name": "Кирпич",
      "image": "assets/images/catTINDER5.jpg",
      "onInfoPressed": (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoCard1(
                name: "Информация о Кирпиче",
                image: "assets/images/catTINDER5.jpg"),
          ),
        );
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TCard(
        cards: catDataList
            .map((catData) => CatCard1(
                  name: catData['name'] as String,
                  image: catData['image'] as String,
                  onInfoPressed:
                      catData['onInfoPressed'] as Function(BuildContext),
                ))
            .toList(),
      ),
    );
  }
}
