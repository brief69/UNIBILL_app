// /Users/ir/Desktop/sense_app/sense_app/lib/views/settings_page.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unibill/viewmodels/settings_view_model.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsViewModel(),
      child: Scaffold(
        body: Consumer<SettingsViewModel>(
          builder: (context, viewModel, child) {
            return ListView(
              children: [
                ListTile(// TODO:rules_pageに遷移する
                  title: const Text('UNIBILLルール'),
                  onTap: () => viewModel.rules(),
                ),
                ListTile(// TODO:prioritySetting画面に遷移する(serchタブ上でもできるが、より詳細な設定を行えるようにする)
                  title: const Text('優先順位設定'),
                  onTap: () => viewModel.prioritySetting(),
                ),
                ListTile(// TODO:defaultScreenSetting画面を遷移する(モーダル画面でhome画面のデフォルトがpayなのかRECEなのかを設定できる)
                  title: const Text('デフォルト画面設定'),
                  onTap: () => viewModel.defaultScreenSetting(),
                ),
                ListTile(//TODO:フィードバックを送るための画面に遷移する
                  title: const Text('フィードバック'),
                  onTap: () => viewModel.giveFeedback(),
                ),
                ListTile(// TODO:問い合わせするための画面に遷移する
                  title: const Text('問い合わせ'),
                  onTap: () => viewModel.contactSupport(),
                ),
                ListTile(// TODO:問題を報告するための画面に遷移する
                  title: const Text('問題の報告'),
                  onTap: () => viewModel.reportIssue(),
                ),
                ListTile(// TODO:開発チームに協力する画面に遷移する
                  title: const Text('開発チームに協力'),
                  onTap: () => viewModel.joinDevTeam(),
                ),
                ListTile(// TODO:メールアドレスを更新する画面に遷移する
                  title: const Text('メールアドレス: ${viewModel.settings.email}'),
                  onTap: () => viewModel.editName(),
                ),
                ListTile(// TODO:パスワードを更新する画面に遷移する
                  title: const Text('パスワード: ${viewModel.settings.password}'),
                  onTap: () => viewModel.editAge(),
                ),
                ListTile(// TODO:電話番号をタップしたら、電話番号入力画面に遷移し、SMS認証が終わったら電話番号を更新する
                  title: const Text('SMS認証: ${viewModel.settings.sms}'),
                  onTap: () => viewModel.editBirthplace(),
                ),
                ListTile(// 振込先口座をタップすると、振込先口座を設定できる画面に遷移し、振込先口座を更新する
                  title: const Text('振込先口座: ${viewModel.settings.bankAccount}'),
                  onTap: () => viewModel.editBirthplace(),
                ),
                ListTile(// TODO:名前をタップしたら、名前を入力し、名前を更新する
                  title: const Text('名前: ${viewModel.settings.name}'),
                  onTap: () => viewModel.editName(),
                ),
                RaisedButton(// TODO:ログアウトボタンそのものを表示、ログアウトボタンを押したらログアウトする
                  child: Text('ログアウト'),
                  onPressed: () => viewModel.logout(),
                ),// TODO:ログアウト後は、サインイン画面に遷移する
                RaisedButton(
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
