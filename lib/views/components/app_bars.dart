// /Users/ir/Desktop/unibill_app/unibill/lib/views/components/app_bars.dart

import 'package:flutter/material.dart';
// Home
AppBar buildMainAppBarForHome() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 0, 30, 1),
    iconTheme: const IconThemeData(color: Colors.white),
    title: const Text('HOME'),
    actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {})],
    bottom: const TabBar(
      tabs: [
        Tab(text: 'BLAC'), 
        Tab(icon: Icon(Icons.arrow_upward), text: 'PAY'),
        Tab(icon: Icon(Icons.sync), text: 'FUN'),
        Tab(icon: Icon(Icons.arrow_downward), text: 'RECE'),
        Tab(icon: Icon(Icons.settings), text: 'SETT'),
      ],
    ),
  );
}
// Search
AppBar buildMainAppBarForSearch() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 0, 30, 1),
    iconTheme: const IconThemeData(color: Colors.white),
    title: const Text('SEARCH'),
    actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
    bottom: const TabBar(
      tabs: [
        Tab(text: 'BLAC'), 
        Tab(icon: Icon(Icons.arrow_upward), text: 'PAY'),
        Tab(icon: Icon(Icons.sync), text: 'FUN'),
        Tab(icon: Icon(Icons.arrow_downward), text: 'RECE'),
        Tab(icon: Icon(Icons.settings), text: 'SETT'),
      ],
    ),
  );
}
// Gate
AppBar buildMainAppBarForGate() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 0, 30, 1),
    iconTheme: const IconThemeData(color: Colors.white),
    title: const Text('GATE'),
    actions: [IconButton(icon: const Icon(Icons.swap_vert), onPressed: () {})],
    bottom: const TabBar(
      tabs: [
        Tab(text: 'BLAC'), 
        Tab(icon: Icon(Icons.arrow_upward), text: 'PAY'),
        Tab(icon: Icon(Icons.sync), text: 'FUN'),
        Tab(icon: Icon(Icons.arrow_downward), text: 'RECE'),
        Tab(icon: Icon(Icons.settings), text: 'SETT'),
      ],
    ),
  );
}
// History
AppBar buildMainAppBarForHist() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 0, 26, 1),
    iconTheme: const IconThemeData(color: Colors.white),
    title: const Text('HISTORY'),
    actions: [IconButton(icon: const Icon(Icons.history), onPressed: () {})],
    bottom: const TabBar(
      tabs: [
        Tab(text: 'BLAC'), 
        Tab(icon: Icon(Icons.arrow_upward), text: 'PAY'),
        Tab(icon: Icon(Icons.sync), text: 'FUN'),
        Tab(icon: Icon(Icons.arrow_downward), text: 'RECE'),
        Tab(icon: Icon(Icons.settings), text: 'SETT'),
      ],
    ),
  );
}
// Wallet
AppBar buildMainAppBarForWallet() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 0, 26, 1),
    iconTheme: const IconThemeData(color: Colors.white),
    title: const Text('WALLET'),
    actions: [IconButton(icon: const Icon(Icons.account_balance_wallet), onPressed: () {})],
    bottom: const TabBar(
      tabs: [
        Tab(text: 'BLAC'), 
        Tab(icon: Icon(Icons.arrow_upward), text: 'PAY'),
        Tab(icon: Icon(Icons.sync), text: 'FUN'),
        Tab(icon: Icon(Icons.arrow_downward), text: 'RECE'),
        Tab(icon: Icon(Icons.settings), text: 'SETT'),
      ],
    ),
  );
}
