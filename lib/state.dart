import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';

class AppState with ChangeNotifier {
  static AppState? me;
  final List<WordPair> _suggestions = [];
  final Set<int> _favorites = {};

  get suggestions => _suggestions;
  Set<int> get favorites => _favorites;

  ntf(Function f) {
    f();
    notifyListeners();
  }

  text(int idx) {
    if (idx >= _suggestions.length) {
      _suggestions.addAll(generateWordPairs().take(10));
    }
    return _suggestions[idx].asPascalCase;
  }

  addFav(int idx) => ntf(() => _favorites.add(idx));
  removeFav(int idx) => ntf(() => _favorites.remove(idx));
  isFavorite(int idx) => _favorites.contains(idx);
  isFavEmpty() => _favorites.isEmpty;
  List<String> favTexts() =>
      _favorites.map((e) => _suggestions[e].asPascalCase).toList();
}
