import 'dart:math';

class Repository<T> {
  Map<String, T> _items = {};

  T addItem(T item) {
    Random r = Random();
    final key = "${r.nextInt(DateTime.now().second)}";
    _items[key] = item;
    return _items[key];
  }

  Map<String, T> get patients => _items;
}
