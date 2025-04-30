import 'package:cat_tinder1/screens/block.dart';
import 'package:cat_tinder1/screens/favorite.dart';
import 'package:cat_tinder1/screens/infoCard.dart';
import 'package:flutter/material.dart';

class CatCard1 extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback onInfoPressed; // Изменено на VoidCallback

  const CatCard1({
    super.key,
    required this.name,
    required this.image,
    required this.onInfoPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Card(
          color: Colors.pink[100],
          margin: const EdgeInsets.all(20),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10),
                // Изображение кота
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    image,
                    width: 250,
                    height: 200,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 250,
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.error, size: 50),
                    ),
                  ),
                ),
                // Название кота
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // Кнопка информации
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ElevatedButton.icon(
                    onPressed: onInfoPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: const Icon(Icons.info, color: Colors.white),
                    label: const Text(
                      'Подробнее',
                      style: TextStyle(color: Colors.white),
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
