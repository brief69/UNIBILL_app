import 'package:flutter/foundation.dart';
import 'package:unibill/models/settings_model.dart';

class SettingsViewModel extends ChangeNotifier {
  final SettingsModel _settings = SettingsModel();

  SettingsModel get settings => _settings;

  void prioritySetting() {
    // TODO: 優先順位設定のための遷移先画面を実装
  }

  void changePassword() {
    // TODO: パスワード変更のための遷移先画面を実装
  }

  void changeEmail() {

  void giveFeedback() {
    // TODO: フィードバックを送るための遷移先画面を実装
  }

  void contactSupport() {
    // TODO: 問い合わせフォームの遷移先画面を実装
  }

  void reportIssue() {
    // TODO:問題の報告のための遷移先画面を実装
  }

  void joinDevTeam() {
    // TODO: 開発チームに協力するための遷移先画面を実装
  }

  void editName(String newName) {
    _settings.name = newName;
    notifyListeners();
  }

  // TODO:他のプロフィール編集メソッドもこのパターンで追加

  void toggleNotificationSettings(bool value) {
    _settings.notificationsEnabled = value;
    notifyListeners();
  }

  void togglePrivacySettings(bool value) {
    _settings.privacyEnabled = value;
    notifyListeners();
  }

  void toggleSecuritySettings(bool value) {
    _settings.securityEnabled = value;
    notifyListeners();
  }


  void login() {
    // TODO: Implement login functionality
  }

  void logout() {
    // TODO: Implement logout functionality
  }

  void deleteAccount() {
    // TODO: Implement account deletion functionality
  }
}
