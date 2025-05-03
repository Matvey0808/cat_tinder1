import 'package:cat_tinder1/screens/Second_screen.dart';
import 'package:cat_tinder1/screens/swipe_card.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          color: Colors.pink[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(
                      "assets/images/cinder.png",
                      width: 128,
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                      scale: 8,
                    ),
                  ),
                  centerTitle: true,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: TinderScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
