

import 'package:flutter/material.dart';
class GatePage extends StatelessWidget {
  const GatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'gate',
            ),
          ],
        ),
      ),

    );
  }
}

// gatepage要件
// itemのグリッドビューで
// item_widgetを作るかなー