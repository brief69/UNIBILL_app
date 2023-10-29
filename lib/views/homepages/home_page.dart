

// home_page.dart
// appbarに配置されたメインのタブを三つ持ってるだけのwidget
import 'package:flutter/material.dart';
import 'package:unibill/views/homepages/fun_page.dart';
import 'package:unibill/views/homepages/pay_page.dart';
import 'package:unibill/views/homepages/rece_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int selectedIndex = 0;

  static final List<Widget> pages = <Widget>[
    const PayPage(),
    const FunPage(),
    const RecePage(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 30, 1),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Pay'),// TODO: アイコンとフォントはrobot,色は白
            Tab(text: 'Fun'),// TODO: アイコンとフォントはrobot,色は白
            Tab(text: 'Rece'),// TODO: アイコンとフォントはrobot,色は白
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: pages,
      ),
    );
  }
}
