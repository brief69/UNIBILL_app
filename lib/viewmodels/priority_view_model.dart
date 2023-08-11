// /Users/ir/Desktop/unibill/unibill/lib/viewmodels/priority_view_model.dart

import 'package:flutter/material.dart';
import 'model.dart';

class ViewModel with ChangeNotifier {
  List<Item> _items = [
    Item('1', true),
    Item('2', true),
    Item('3', true),
  ];

  List<Item> get items => _items;

  void reorderItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex--;
    final item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
    notifyListeners();
  }

  void toggleItem(Item item) {
    item.isEnabled = !item.isEnabled;
    notifyListeners();
  }
}
