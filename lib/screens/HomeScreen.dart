import 'package:cat_tinder1/screens/Second_screen.dart';
import 'package:cat_tinder1/screens/card.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.pink[200],
          elevation: 2,
          shadowColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.menu,
                size: 39,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 1, bottom: 1),
            child: Image.asset(
              "assets/images/cinder.png",
              scale: 8,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 140, top: 15),
            child: Text(
              "Найди своего друга!",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 236, 220, 190)),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: SizedBox(
                    height: 230,
                    child: CatCard1(),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: SizedBox(
                    height: 230,
                    child: CatCard2(),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
