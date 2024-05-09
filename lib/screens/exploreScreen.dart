import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late RiveAnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body:Stack(
        children: [
          RiveAnimation.asset('assets/animations/exploreAnimation',),
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Center(
              child: CircleAvatar(
                radius: 85.0,
                child: Icon(Icons.person,
                  size: 200,
                  color: Colors.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
