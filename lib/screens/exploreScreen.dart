import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: Center(
        child: Expanded(

          child: RiveAnimation.asset('assets/animations/search',

          ),
        ),

      ),
    );
  }
}
