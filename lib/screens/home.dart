import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:rahhal/widgets/CardList.dart';

import '../widgets/Card.dart';
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
          // CardList()
        ],
      ),

    );
  }
}
