

import 'package:flutter/material.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'package:unibill/viewmodels/walletviewmodels/wallet_page_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final walletProvider = FutureProvider<WalletViewModel>((ref) async {
  final walletVM = WalletViewModel();
  await walletVM.init();
  return walletVM;
});

class WalletTab extends ConsumerWidget {
  const WalletTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletVM = ref.watch(walletProvider);
    return walletVM.when(
      data: (vm) => ReorderableGridView(
        onReorder: (int oldIndex, int newIndex) {
          vm.onReorder(oldIndex, newIndex);
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust as needed
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return vm.buildGridItem(index);
          },
          childCount: vm.items.length,
        ),
      ),
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
  }
}
