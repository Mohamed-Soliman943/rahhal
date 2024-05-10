import 'package:flutter/material.dart';

class HomeLayerThree extends StatefulWidget {
  const HomeLayerThree({super.key});

  @override
  State<HomeLayerThree> createState() => _HomeLayerThreeState();
}

class _HomeLayerThreeState extends State<HomeLayerThree> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.black,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Text('nlkvmklrnfvmklf',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: 150,
                height: 40,
                child: const Text('Close',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
