

// home_pay_page.dart
import 'package:flutter/material.dart';
import 'package:unibill/viewmodels/homeviewmodels/home_paytab_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 26, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // QRコード読み取り用のフォーム
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'QRコードを読み取ってアドレスを入力',
                ),
              ),
              const Icon(Icons.arrow_upward), // TODO: ↑アイコンをもっと大きくて太めの矢印アイコンに変更する
              // 価格入力用のフォーム
              TextFormField(
                decoration: const InputDecoration(
                  hintText: '価格を入力',
                ),
              ),
              // 保有総額とプライバシーボタン
              Consumer<PortfolioViewModel>(
                builder: (context, viewModel, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('保有総額: ${viewModel.totalValue}'), // TODO:保有総額を表示しているとき、目のアイコンを表示する
                    ElevatedButton(
                      onPressed: () {
                        viewModel.setTotalValue(0); // TODO:保有総額を隠すのは、0にするのではなく、保有総額の上を灰色にするようにする
                      },
                      child: const Text('隠す'),// TODO:隠すというテキストではなく、目に斜め線が入ったアイコンにする
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
