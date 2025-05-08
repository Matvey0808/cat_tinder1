import 'package:cat_tinder1/models/favorite_cats.dart';
import 'package:flutter/material.dart';

class BlockScreen extends StatefulWidget {
  const BlockScreen({super.key});

  @override
  State<BlockScreen> createState() => _BlockScreenState();
}

class _BlockScreenState extends State<BlockScreen> {
  final BlockCats _blockCats = BlockCats();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Плохие кошечки',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink[100],
      ),
      body: _blockCats.blocked.isEmpty
          ? const Center(
              child: Text(
                'У вас пока нет плохих кошек',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: _blockCats.blocked.length,
              itemBuilder: (context, index) {
                final cat = _blockCats.blocked[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        cat['image']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const Icon(Icons.pets),
                      ),
                    ),
                    title: Text(
                      cat['name']!,
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                    trailing: IconButton(
                      icon:
                          const Icon(Icons.delete, color: Colors.red, size: 30),
                      onPressed: () {
                        setState(() {
                          _blockCats.removeBlock(cat['name']!);
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
