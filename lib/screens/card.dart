import 'package:cat_tinder1/screens/block.dart';
import 'package:cat_tinder1/screens/favorite.dart';
import 'package:cat_tinder1/screens/infoCard.dart';
import 'package:flutter/material.dart';

class CatCard1 extends StatelessWidget {
  const CatCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.pink[200],
          child: SizedBox(
            width: 160,
            height: 220,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/catTINDER.jpeg")),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        "Бобик",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 34),
                          child: Text(
                            "НЕ рыжий",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: 24,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const InfoCard1(),
                                ),
                              );
                            },
                            icon: Icon(Icons.arrow_forward_outlined),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CatCard2 extends StatelessWidget {
  const CatCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.pink[200],
          child: SizedBox(
            width: 160,
            height: 220,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/catTINDER3.png")),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text(
                        "Кирпич",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "точно БЕЛЫЙ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: 24,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const InfoCard2(),
                                ),
                              );
                            },
                            icon: Icon(Icons.arrow_forward_outlined),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardFavorite1 extends StatelessWidget {
  const CardFavorite1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.pink[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: SizedBox(
          width: 330,
          height: 60,
          child: Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 4),
                  child: Icon(
                    Icons.favorite,
                    size: 28,
                    color: Colors.redAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Избранные пушистые",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardFavorite2 extends StatelessWidget {
  const CardFavorite2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.pink[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: SizedBox(
          width: 330,
          height: 60,
          child: Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 4),
                  child: Icon(
                    Icons.block,
                    size: 28,
                    color: Colors.redAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "Злючки наверное",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlockScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Карточки для Настроек

class CardTheme1 extends StatelessWidget {
  const CardTheme1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 255,
          height: 55,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.nightlight,
                  size: 25,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Темная тема",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Transform.scale(
                  scale: 1,
                  child: Switch(
                    value: true,
                    onChanged: (bool value) {},
                    activeColor: Colors.pink[200],
                    thumbColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardTheme2 extends StatelessWidget {
  const CardTheme2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 255,
          height: 55,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.notifications,
                  size: 25,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  "Уведомления",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Transform.scale(
                  scale: 1,
                  child: Switch(
                    value: true,
                    onChanged: (bool value) {},
                    activeColor: Colors.pink[200],
                    thumbColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardTheme3 extends StatelessWidget {
  const CardTheme3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 255,
          height: 55,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  "Сменить аватар",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardTheme4 extends StatelessWidget {
  const CardTheme4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 255,
          height: 55,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  "Изменить никнейм",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardTheme5 extends StatelessWidget {
  const CardTheme5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 255,
          height: 55,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Icon(
                  Icons.delete,
                  size: 25,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  "Очистить избранные",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
