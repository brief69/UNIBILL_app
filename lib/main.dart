

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:unibill/views/homepages/home_page.dart';
import 'package:unibill/views/walletpages/wallet_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniBill',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WalletPage(),
    );
  }
}

