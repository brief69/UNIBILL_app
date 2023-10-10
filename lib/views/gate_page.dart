

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

// I would like to use the bubble button library, but I don't think the bubble buttons are ready, so I wonder if I should implement them in a grid view with different sizes for once, ah, ?