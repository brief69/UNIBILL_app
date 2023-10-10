// history_viewmodel.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final historyViewModelProvider = StreamProvider.autoDispose((ref) {
  return FirebaseFirestore.instance.collection('history').snapshots();
});
