import 'package:flutter/material.dart';

import '../widgets/homeLayerOne.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: Stack(
        children: [
          HomeLayerOne(),
          // CardList()
        ],
      ),

    );
  }
}
