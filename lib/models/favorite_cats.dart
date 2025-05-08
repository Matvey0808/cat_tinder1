// Модель для избранных котов

class FavoriteCats {
  static final FavoriteCats _instance = FavoriteCats._internal();
  factory FavoriteCats() => _instance;
  FavoriteCats._internal();

  final List<Map<String, String>> _favorites = [];

  List<Map<String, String>> get favorites => _favorites;

  void addFavorite(String name, String image) {
    _favorites.add({
      'name': name,
      'image': image,
    });
  }

  void removeFavorite(String name) {
    _favorites.removeWhere((cat) => cat['name'] == name);
  }

  bool isFavorite(String name) {
    return _favorites.any((cat) => cat['name'] == name);
  }
}

// Модель заблокированных котов
class BlockCats {
  static final BlockCats _instance = BlockCats._internal();
  factory BlockCats() => _instance;
  BlockCats._internal();

  final List<Map<String, String>> _blocked = [];

  void addBlock(String name, String image) {
    if (!_blocked.any((cat) => cat['name'] == name)) {
      _blocked.add({
        'name': name,
        'image': image,
      });
    }
  }

  void removeBlock(String name) {
    _blocked.removeWhere((cat) => cat['name'] == name);
  }

  bool isBlock(String name) {
    return _blocked.any((cat) => cat['name'] == name);
  }

  List<Map<String, String>> get blocked => _blocked;
}
