import 'package:cat_tinder1/screens/HomeScreen.dart';
import 'package:cat_tinder1/screens/card.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 300,
            height: 500,
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Настройки",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 110, top: 15),
                    child: Text(
                      "Дополнительно",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        CardTheme1(),
                        CardTheme2(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 160, top: 15),
                    child: Text(
                      "Профиль",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
