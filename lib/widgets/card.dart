import 'package:cat_tinder1/screens/block_screen.dart';
import 'package:cat_tinder1/screens/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:cat_tinder1/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:cat_tinder1/models/favorite_cats.dart';

class CatCard1 extends StatefulWidget {
  final String name;
  final String image;
  final VoidCallback onInfoPressed;

  const CatCard1({
    super.key,
    required this.name,
    required this.image,
    required this.onInfoPressed,
  });

  @override
  State<CatCard1> createState() => _CatCard1State();
}

class _CatCard1State extends State<CatCard1> {
  final FavoriteCats _favoriteCats = FavoriteCats();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 470,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            // Изображение кота на весь размер карточки
            Positioned.fill(
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Center(
                  child: Icon(Icons.pets, size: 100, color: Colors.pink[200]),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.pink[200]!.withOpacity(0.9),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Кнопка "Дизлайк"
                  _buildActionButton(
                    icon: BlockCats().isBlock(widget.name)
                        ? Icons.block
                        : Icons.block_outlined,
                    color: Colors.redAccent,
                    onPressed: () {
                      setState(() {
                        if (BlockCats().isBlock(widget.name)) {
                          BlockCats().removeBlock(widget.name);
                        } else {
                          BlockCats().addBlock(widget.name, widget.image);
                          _favoriteCats.removeFavorite(widget.name);
                        }
                      });
                    },
                  ),

                  // Кнопка "Подробнее"
                  ElevatedButton.icon(
                    onPressed: widget.onInfoPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[100]!.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    icon: const Icon(Icons.info, size: 20, color: Colors.white),
                    label: const Text(
                      'Подробнее',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  // Кнопка "Лайк"
                  _buildActionButton(
                    icon: _favoriteCats.isFavorite(widget.name)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.redAccent,
                    onPressed: () {
                      setState(() {
                        if (_favoriteCats.isFavorite(widget.name)) {
                          _favoriteCats.removeFavorite(widget.name);
                        } else {
                          _favoriteCats.addFavorite(widget.name, widget.image);
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: color),
        iconSize: 28,
        onPressed: onPressed,
      ),
    );
  }
}

// Карточки для Настроек

class CardTheme1 extends StatelessWidget {
  const CardTheme1({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Center(
      child: Card(
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 255,
          height: 55,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.nightlight,
                  size: 25,
                  color: Colors.blueGrey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
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
                    value: themeProvider.themeMode == ThemeMode.dark,
                    onChanged: (bool value) {
                      themeProvider.toggleTheme(value);
                    },
                    activeTrackColor: Colors.pink[200],
                    inactiveTrackColor: Colors.pink[100],
                    thumbColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                ),
              ),
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
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FavoritesScreen(),
            ),
          );
        },
        child: Card(
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
                    Icons.favorite,
                    size: 25,
                    color: Colors.blueGrey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text(
                    "Избранные",
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
      ),
    );
  }
}

class CardTheme4 extends StatelessWidget {
  const CardTheme4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlockScreen(),
            ),
          );
        },
        child: Card(
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
                    Icons.close,
                    size: 25,
                    color: Colors.blueGrey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text(
                    "Плохиши",
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
                  "Очистить плохишей",
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

class CardTheme6 extends StatelessWidget {
  const CardTheme6({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
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
