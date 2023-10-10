

import 'package:flutter/material.dart';
import 'package:unibill/views/homepages/home_page.dart';
import 'package:unibill/views/gate_page.dart';
import 'package:unibill/views/walletpages/wallet_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    GatePage(),
    WalletPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Gate',
            activeIcon: Icon(Icons.send, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
            activeIcon: Icon(Icons.account_balance_wallet, color: Colors.lightGreen),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.lightGreen,
        backgroundColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
