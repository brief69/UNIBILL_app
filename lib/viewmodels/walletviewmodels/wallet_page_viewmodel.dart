

import 'package:flutter/material.dart';

class WalletViewModel {
  List<ItemModel> items = [];

  Future<void> init() async {
    // TDOO:Load items from Firestore

    // TODO:Assign to the items list
  }

  Widget buildGridItem(int index) {
    final item = items[index];
    // Build and return your grid item widget
    // Handle onTap to navigate to detail page
  }

  void onReorder(int oldIndex, int newIndex) {
    // Handle reorder logic
    // Update Firestore with new order
  }
}

class ItemModel {
  String get name => null;
  // Define your item model
  // e.g., id, title, backgroundColor, textColor, imageUrl
}


// TODO:Item detail page
