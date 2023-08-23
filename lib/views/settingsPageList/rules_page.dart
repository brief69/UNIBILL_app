// /Users/ir/Desktop/unibill_app/unibill/lib/views/settingListPages/rules_page.dart

import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('UNIBILL RULES', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 90, 0, 0),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'UNIBILL USER RULES'),
              Tab(text: 'UNIBILL MANAGEMENT RULES'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UserRulesTab(),
            ManagementRulesTab(),
          ],
        ),
      ),
    );
  }
}

class UserRulesTab extends StatelessWidget {
  const UserRulesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('ユーザールール1'), // TODO:ここに具体的でわかりやすく、簡潔なルール内容を追加する
        ),
        ListTile(
          title: Text('ユーザールール2'), // 同上
        ),
        // TODO:ルールを追加する
      ],
    );
  }
}

class ManagementRulesTab extends StatelessWidget {
  const ManagementRulesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('運営ルール1'),
        ),
        ListTile(
          title: Text('運営ルール2'),
        ),
        // TODO:ルールを追加する
      ],
    );
  }
}

