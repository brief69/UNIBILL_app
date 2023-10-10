// history_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class History {
  final String title;
  final String subtitle;

  History({
    required this.title,
    required this.subtitle,
  });

  factory History.fromDocumentSnapshot(DocumentSnapshot doc) {
    return History(
      title: doc['title'] as String,
      subtitle: doc['subtitle'] as String,
    );
  }
}
