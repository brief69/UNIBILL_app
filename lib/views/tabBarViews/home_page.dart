// /Users/ir/Desktop/unibill_app/unibill/lib/views/tabBarViews/home_page.dart

import 'package:flutter/material.dart';
import 'package:unibill/views/tabBarViews/blac_tab.dart';
import 'package:unibill/views/tabBarViews/fun_tab.dart';
import 'package:unibill/views/tabBarViews/pay_tab.dart';
import 'package:unibill/views/tabBarViews/rece_tab.dart';
import 'package:unibill/views/tabBarViews/sett_tab.dart';



class HomePage extends; StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5, 
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 30, 1),
            iconTheme: const IconThemeData(color: Colors.white),
            title: null,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'BLAC'), 
                Tab(icon: Icon(Icons.arrow_upward), text: 'PAY'), 
                Tab(icon: Icon(Icons.sync), text: 'FUN'), // TODO: 同期アイコンを表示する
                Tab(icon: Icon(Icons.arrow_downward), text: 'RECE'),
                Tab(icon: Icon(Icons.settings), text: 'SETT'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BlacTab(),
              PayTab(),
              FunTab(),
              ReceTab(),
              SettTab(),
            ],
          ),
        ),
      ),
    );
  }
}

