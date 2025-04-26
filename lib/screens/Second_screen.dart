import 'package:cat_tinder1/screens/HomeScreen.dart';
import 'package:cat_tinder1/screens/card.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Настройки",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CardFavorite1(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CardFavorite2(),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homescreen(),
                      ),
                    );
                  },
                  child: Text("Тест кнопка потом будет норм"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
