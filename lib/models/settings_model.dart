// 

import 'package:flutter/material.dart';

class SettingsModel {
  String name;
  String email;
  String password;
  bool notificationsEnabled;
  bool privacyEnabled;
  bool securityEnabled;

  SettingsModel({
    this.name = 'John Doe',
    this.email = '
    this.password = 'password',
    this.notificationsEnabled = true,
    this.privacyEnabled = true,
    this.securityEnabled = true,
  });

  