// 

import 'package:flutter/material.dart';
import 'package:unibill/views/home_page.dart';
import 'package:unibill/views/search_page.dart';
import 'package:unibill/views/gate_page.dart';
import 'package:unibill/views/history_page.dart';
import 'package:unibill/views/wallet_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material( 
        color: Colors.green,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.white, 
          labelColor: Colors.green,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.)),
            Tab(icon: Icon(Icons.)),
            Tab(icon: Icon(Icons.)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomePage(),
          SearchPage(),
          GatePage(),
          WalletPage(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
