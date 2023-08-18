//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unibill/models/settings_model.dart';
import 'package:unibill/viewmodels/recePage_viewmodel.dart';

class ReceTab extends StatelessWidget {
  const ReceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/qrcode_scanner.png'),  // QRコードスキャナーのイメージ
          Icon(Icons.arrow_downward),
          TextFormField(
            decoration: const InputDecoration(
              labelText: '受け取る額を入力',
              suffixText: 'z',
            ),
            controller: TextEditingController(),  // ここで受け取る額のcontrollerを指定
          ),
          const Text('残高: 0000z'),  // ここで実際の残高を表示
          SizedBox(height: 20),
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