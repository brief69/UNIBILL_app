

// home_rece_page.dart
import 'package:flutter/material.dart';

class RecePage extends StatelessWidget {
  const RecePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/qrcode_scanner.png'),  // QRコードスキャナーのイメージ
          const Icon(Icons.arrow_downward),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '受け取る額を入力',
              suffixText: 'z',
            ),
            controller: TextEditingController(),  // ここで受け取る額のcontrollerを指定
          ),
          const Text('残高: 0000z'),  // ここで実際の残高を表示
          const SizedBox(height: 20),
          SwitchListTile(
            title: const Text('プライバシー'),
            value: true, // 初期状態。必要に応じて変更する
            onChanged: (bool value) {
              // ここにプライバシーボタンの機能を追加
            },
          ),
        ],
      ),
    );
  }
}