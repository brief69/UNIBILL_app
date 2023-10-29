

import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unibill/models/item_grid.dart';
import 'package:unibill/viewmodels/item_grid_viewmodel.dart';

// TODO;このページいらんな。
// この感じをgateとwalletでする感じやな。
// 

class SearchPage extends SearchPage{
  Widget build(BuildContext context) {
    final items = useProvider(gridItemsProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            fillColor: Colors.white,
            filled: true,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () async {
              // ここでアイテム追加のロジックを追加
            },
          ),
        ],
      ),
      body: items.when(
        data: (data) => ReorderableWrap(
          spacing: 0.0,
          runSpacing: 0.0,
          children: data.map((item) => _buildItem(context, item)).toList(),
          onReorder: (oldIndex, newIndex) {
            // ここでFirestoreのデータの順序を変更するロジックを追加
          },
        ),
        loading: () => const CircularProgressIndicator(),
        error: (_, __) => const Text('Error loading items'),
      ),
    );
  }

  Widget _buildItem(BuildContext context, GridItem item) {
    return GestureDetector(
      onTap: () {
        // 詳細ページへの遷移ロジック
      },
      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(child: Text(item.name)),
      ),
    );
  }
}
