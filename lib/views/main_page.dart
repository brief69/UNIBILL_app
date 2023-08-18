import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unibill/views/appBarTabPages/homePay_page.dart';
import 'package:unibill/views/components/appbar.dart';  

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5, 
        child: Scaffold(
          appBar: _buildAppBarForSelectedIndex(_selectedIndex),
          body: TabBarView(
            children: [
              BlacTab(),
              PayTab(),
              FunTab(),
              ReceTab(),
              SettTab(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
              BottomNavigationBarItem(icon: Icon(Icons.swap_vert), label: 'GATE'),
              BottomNavigationBarItem(icon: Icon(Icons.history), label: 'HISTORY'),
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'WALLET'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color.fromARGB(255, 0, 56, 56),
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBarForSelectedIndex(int index) {
    switch (index) {
      case 0:
        return buildMainAppBarForHome();
      case 1:
        return buildMainAppBarForSearch();
      case 2:
        return buildMainAppBarForGate();
      case 3:
        return buildMainAppBarForHistory();
      case 4:
        return buildMainAppBarForWallet();

      default:
        return buildMainAppBarForHome();
    }
  }
}
