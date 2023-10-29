

// item_grid_view.dart
import 'package:flutter/material.dart';
import 'package:unibill/viewmodels/walletviewmodels/wallet_page_viewmodel.dart';

class ItemGridView extends StatelessWidget {
  final List<ItemModel> items;  // Data model list
  final Function(ItemModel) onItemTap;  // Item tap callback

  const ItemGridView({super.key, required this.items, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    // ドラッグ&ドロップのロジックをここに書く
    // 今は簡易的にしてるが、ちゃんとやってく。

    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  // 例として2列のグリッドを作成
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: () => onItemTap(item),
          child: Card(
            child: Center(child: Text(item.name)),
          ),
        );
      },
    );
  }
}

