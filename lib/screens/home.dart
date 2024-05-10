import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rahhal/widgets/homeLayerthree.dart';

import '../widgets/homeLayerOne.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: Stack(
        children: [
          HomeLayerOne(),
          HomeLayerThree(),

        ],
      ),

    );
  }
}
