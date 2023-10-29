

// rules_page.dart
import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UNIBILL ', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 17, 5),
      ),
      body: const RuleList(),
    );
  }
}

class RuleList extends StatelessWidget {
  const RuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('ユーザールール1'),
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
        ListTile(
          title: Text('ユーザールール2'), 
        ),
      ],
    );
  }
}
