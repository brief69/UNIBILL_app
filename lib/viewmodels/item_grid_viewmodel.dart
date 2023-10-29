

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unibill/models/item_grid.dart';

final gridItemsProvider = StreamProvider<List<GridItem>>((ref) {
  return FirebaseFirestore.instance
      .collection('grid_items')
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => GridItem.fromFirestore(doc)).toList());
});

final addItemProvider = Provider.family<void, String>((ref, itemName) {
  final CollectionReference items = FirebaseFirestore.instance.collection('grid_items');
  final newItem = GridItem(id: '', name: itemName); // idはFirestoreで自動生成されます
  return items.add(newItem.toFirestore());
});
