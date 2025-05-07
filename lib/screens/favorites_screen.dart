import 'package:flutter/material.dart';
import 'package:cat_tinder1/models/favorite_cats.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final FavoriteCats _favoriteCats = FavoriteCats();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Избранные кошки'),
        backgroundColor: Colors.pink[100],
      ),
      body: _favoriteCats.favorites.isEmpty
          ? const Center(
              child: Text(
                'У вас пока нет избранных кошек',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: _favoriteCats.favorites.length,
              itemBuilder: (context, index) {
                final cat = _favoriteCats.favorites[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        cat['image']!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const Icon(Icons.pets),
                      ),
                    ),
                    title: Text(cat['name']!),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          _favoriteCats.removeFavorite(cat['name']!);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
} 