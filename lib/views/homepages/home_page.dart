

import 'package:flutter/material.dart';
import 'package:unibill/views/homepages/home_fun_page.dart';
import 'package:unibill/views/homepages/home_pay_page.dart';
import 'package:unibill/views/homepages/home_rece_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> pages = <Widget>[
    const PayPage(),
    const FunPage(),
    const RecePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'UniBill',
          style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
        ),
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Pay'),
            Tab(text: 'Fun'),
            Tab(text: 'Receive'),
          ],
        ),
      ),
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Fun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Rece',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.green[600],
        onTap: _onItemTapped,
      ),
    );
  }
}