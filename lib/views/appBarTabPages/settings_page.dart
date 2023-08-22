// /Users/ir/Desktop/sense_app/sense_app/lib/views/settings_page.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unibill/viewmodels/settings_view_model.dart';
import 'package:unibill/views/settingListPages/rules_page.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsViewModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 18, 12),
          title: const Text('settings', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.white,
        body: Consumer<SettingsViewModel>(
          builder: (context, viewModel, child) {
            return ListView(
              children: [
                ListTile(
                  title: const Text('UNIBILL RULES'),
                  onTap: () => const RulesPage(),
                ),
                ListTile(// TODO:prioritySetting画面に遷移する(serchタブ上でもできるが、より詳細な設定を行えるようにする)
                  title: const Text('優先順位設定'),
                  onTap: () => viewModel.prioritySetting(),
                ),
                ListTile(// TODO:defaultScreenSetting画面を遷移する(モーダル画面でhome画面のデフォルトがpayなのかRECEなのかを設定できる)
                  title: const Text('デフォルト画面設定'),
                  onTap: () => viewModel.defaultScreenSetting(),
                ),

                ListTile(
                  title: const Text('メールアドレス'),
                  onTap: () => viewModel.editName(),
                ),
                ListTile(
                  title: const Text('問い合わせ'),
                  onTap: () => viewModel.contactSupport(),
                ),
                ListTile(
                  title: const Text('開発チームに協力'),
                  onTap: () => viewModel.joinDevTeam(),
                ),
                ElevatedButton(
                  child: const Text('ログアウト'),
                  onPressed: () => viewModel.logout(),
                ),// TODO:ログアウト後は、サインイン画面に遷移する
                ElevatedButton(
                  child: const Text('アカウント削除'),
                  onPressed: () => viewModel.deleteAccount(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
