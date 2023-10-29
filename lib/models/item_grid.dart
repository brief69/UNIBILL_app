

import 'package:cloud_firestore/cloud_firestore.dart';

class GridItem {
  final String id;
  final String name;

  GridItem({required this.id, required this.name});

  // Firestoreのデータからインスタンスを生成するためのファクトリーメソッド
  factory GridItem.fromFirestore(DocumentSnapshot doc) {
    return GridItem(
      id: doc.id,
      name: doc['name'],
    );
  }

  // Firestoreに保存するためのMapを生成
  Map<String, Object?> toFirestore() {
    return {
      'name': name,
    };
  }
}
