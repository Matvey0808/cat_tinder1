import 'package:cat_tinder1/widgets/card.dart';
import 'package:cat_tinder1/widgets/infoCard.dart';
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
      "info": "Имя: Бобик",
      "onInfoPressed": (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoCard1(
                info: """
                Имя: Бобик
                Возраст: 2 года

                Особые навыки
                - Эксперт по сну 23/7
              - Тестировщик диванов

                Характер
          - Днем - комочек счастья
                - Ночью - тыгыдык

                Любимая еда:\n            Что лежитна столе

                Вес: 3 кг\n               (+ ваш бутерброд)

                Расписание:\n           5:00\n          Концерт утренних трелей\n           10:00\n          Сон после завтрака\n           15:00\n         проверка качества дивана
                """,
                name: "Информация о Бобике",
                image: "assets/images/catTINDER.jpeg"),
          ),
        );
      },
    },
    {
      "name": "Бобр",
      "image": "assets/images/catTINDER3.png",
      "info": "проверка1",
      "onInfoPressed": (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoCard1(
                info: """
                Имя: Кирпич
                Возраст: 3 года

                Особые навыки
          - Профессиональный массажист
              - Тестировщик диванов

                Характер
          - Днем - комочек счастья
                - Ночью - тыгыдык

                Любимая еда:\n            Что лежитна столе

                Вес: 3 кг\n               (+ ваш бутерброд)

                Расписание:\n           5:00\n          Концерт утренних трелей\n           10:00\n          Сон после завтрака\n           15:00\n         проверка качества дивана
                """,
                name: "Информация о Бобре",
                image: "assets/images/catTINDER3.png"),
          ),
        );
      },
    },
    {
      "name": "Кирпич",
      "image": "assets/images/catTINDER5.jpg",
      "info": "asdasdasdasda123",
      "onInfoPressed": (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoCard1(
                info: "asdasdasd234",
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
                  onInfoPressed: () => catData['onInfoPressed'](context),
                ))
            .toList(),
      ),
    );
  }
}
