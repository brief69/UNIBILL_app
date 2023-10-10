

import 'package:flutter/material.dart';
import 'package:unibill/views/walletpages/wallet_tab_page.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  WalletPageState createState() => WalletPageState();
}

class WalletPageState extends State<WalletPage> {
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            // Navigate to username changing page
          },
          child: const Text(
            'Username', // Retrieve username from Firestore
            style: TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings page
            },
          ),
        ],
      ),
      body: const DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Wallet'),
                Tab(text: 'History'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  WalletTab(), // You need to implement WalletTab
                  HistoryTab(), // You need to implement HistoryTab
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve data from Firestore and display it as a list
    // Add your logic here
    return ListView(
      // ...
    );
  }
}

// TODO: Implement other pages and functions as needed


// wallet_page.dart
// appbarの左にユーザーネームを表示する
// ユーザーネームはタップできる
// ユーザーネームをタップすると、ユーザーネームを変更するページに遷移する
// ユーザーネームを変更するページでは、ユーザーネームを変更できる
// ユーザーネームを変更するページでは、変更を保存できる
// ユーザーネームをタップすると、profileページに遷移する
// 変更したら、popで戻る、
// 変更したら、firestoreに保存する
// 変更したら、appbarに表示されるユーザーネームも変更する
// appbarの右に設定アイコンを表示する
// 設定アイコンをタップすると、設定ページに遷移する
// appbarの背景色は濃い緑、文字色は白、フォントはロボット

// appbar以外のメインのwalletページとしてのロジック
// appbarの下に、二つのタブを表示する
// 一つ目のタブは、walletタブ、もう一つは、historyタブ
// walletタブは、グリッドビューで表示する
// historyタブは、リストビューで表示する
// walletタブのグリッドビューの中身は、firestoreから取得する
// historyタブのリストビューの中身は、firestoreから取得する
// walletタブのグリッドビューの中身は、firestoreに保存する
// historyタブのリストビューの中身は、firestoreに保存する

// walletタブ
// walletタブのグリッドビューの中身は、firestoreから取得する
// グリッドビューの隙間はなく、アイテム同士がくっついている(境界(線)はある)
// グリッドビューは、順序を変更できる。
// グリッドビューは、アイテムを追加できる。
// 各グリッドビューは、背景や文字色、imageを変更できるし、タップするとDetailページに遷移する。
// 順序が変更したら、firestoreに保存する
// グリッドビュー全体の情報が、firestoreに保存される
// グリッドビューには、reorderable_grid_viewパッケージを使う
// 