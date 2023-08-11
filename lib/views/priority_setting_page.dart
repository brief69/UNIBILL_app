// /Users/ir/Desktop/unibill/unibill/lib/views/priority_setting_page.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unibill/models/';
import 'priority_view_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Priority Setting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ViewModel(),
        child: PriorityScreen(),
      ),
    );
  }
}

class PriorityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PRIORITIES'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'RECEIPT'),
              Tab(text: 'PAYMENT'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoryTabs(),
            CategoryTabs(),
          ],
        ),
      ),
    );
  }
}

class CategoryTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Currency'),
                    Tab(text: 'Gateway'),
                    Tab(text: 'Direct'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      PriorityList(),
                      PriorityList(),
                      PriorityList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PriorityList extends StatelessWidget {
  const PriorityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(
      builder: (context, viewModel, child) {
        return ReorderableListView.builder(
          itemCount: viewModel.items.length,
          onReorder: (oldIndex, newIndex) =>
              viewModel.reorderItems(oldIndex, newIndex),
          itemBuilder: (context, index) {
            var item = viewModel.items[index];
            return ListTile(
              key: ValueKey(item),
              title: Text(item.title),
              trailing: Switch(
                value: item.isEnabled,
                onChanged: (bool value) {
                  viewModel.toggleItem(item);
                },
              ),
            );
          },
        );
      },
    );
  }
}
