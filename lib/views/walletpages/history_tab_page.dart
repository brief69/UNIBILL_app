

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final historyProvider = StreamProvider.autoDispose((ref) {
  return FirebaseFirestore.instance.collection('history').snapshots();
});

class HistoryTab extends ConsumerWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyProvider);
    return history.when(
      data: (snapshots) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 0, 22, 1),
              title: const Text(
                '',
                style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60.0),
                child: _SearchBox(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final data = snapshots.docs[index].data();
                  return _HistoryItem(data: data);
                },
                childCount: snapshots.docs.length,
              ),
            ),
          ],
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
  }
}

class _SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('Search Box');
  }
}

class _HistoryItem extends StatelessWidget {
  final Map<String, dynamic> data;

  const _HistoryItem({required this.data});

  @override
  Widget build(BuildContext context) {
    // TODO: #1 Display data from Firestore
    return ListTile(
      title: Text(data['title'].toString()),
      subtitle: Text(data['subtitle'].toString()),
    );
  }
}

// appbarには、pay, fun,receiveの三つのタブを配置する
// それぞれの名前は、hist_paytab.dart,hist_funtab.dart,hist_recetab.dart
// appbarのすぐ下には、レイアウトとしてそんなに大きくない、検索フォームを配置する
// 検索フォームは、appbarに配置されているすべてのタブの中身を一括で検索できる
// appbarすぐ下の検索フォームは、sliverを使って、スクロールしても常に表示されるようにする
// 検索フォームの下には、タブの中身を表示する
// タブの中身は、hist_paytab.dart,hist_funtab.dart,hist_recetab.dartの中身を参照する
// 全体の色は、appbarの背景色と同じgreen,文字色はwhite,fontはroboto
// 検索結果の履歴は、firestoreから取得する
// 検索結果の履歴は、検索フォームに入力された文字列と、履歴の中身の文字列を比較して、検索フォームに入力された文字列が含まれているものだけを表示する
// 検索フォームに入力された文字列が、履歴の中身の文字列に含まれていない場合、その履歴は表示しない