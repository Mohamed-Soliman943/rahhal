import 'package:flutter/material.dart';
import '../widgets/homeLayerOne.dart';
import '../widgets/homeLayerthree.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _stackChildren = [
    HomeLayerOne(),
  ];

  void _pushWidget() {
    setState(() {
      _stackChildren.add(
        HomeLayerThree(onClose: _popWidget),
      );
    });
  }

  void _popWidget() {
    setState(() {
      if (_stackChildren.isNotEmpty) {
        _stackChildren.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: Stack(
        children: _stackChildren,
      ),
      floatingActionButton: _stackChildren.length < 2
          ? SizedBox(
        width: 200,
        height: 200,
        child: Positioned(
          bottom: -10,
          right: -0,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.transparent,
            onPressed: _pushWidget,
            child: Image.asset(('assets/images/horas.png')),
          ),
        ),
      )
          : Container(),
    );
  }
}
