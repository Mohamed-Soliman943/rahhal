import 'package:flutter/material.dart';
import 'package:rahhal/widgets/presenter.dart';
class HomeLayerThree extends StatelessWidget {
  final VoidCallback onClose;

  const HomeLayerThree({Key? key, required this.onClose}) : super(key: key);

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
            Expanded(child: Presenter()),
            GestureDetector(
              onTap: onClose, // Call the onClose callback function
              child: Container(
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(100, 100, 100, 100),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: 150,
                height: 40,
                child: const Text(
                  'Close',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}