import 'package:flutter/material.dart';

import '../widgets/card.dart';
import 'home_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Card(
                color: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SizedBox(
                  width: 300,
                  height: 590,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Настройки",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 110, top: 15),
                        child: Text(
                          "Дополнительно",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            CardTheme1(),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 160, top: 5),
                        child: Text(
                          "Профиль",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: CardTheme3(),
                      ),
                      CardTheme4(),
                      Padding(
                        padding: EdgeInsets.only(right: 160, top: 5),
                        child: Text(
                          "Удаление",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      CardTheme6(),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: CardTheme5(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Спасибо, что любите котиков!",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.pets,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 80),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 34,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
