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