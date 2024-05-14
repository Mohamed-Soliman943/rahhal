import 'package:flutter/material.dart';
import 'package:rahhal/screens/qrScan.dart';
import 'package:simple_floating_bottom_nav_bar/floating_bottom_nav_bar.dart';
import 'package:simple_floating_bottom_nav_bar/floating_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cameraDetection.dart';
class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages= [
      CameraDetectionScreen(),
      QrScan(),
    ];
    return FloatingBottomNavBar(
        pages: pages,
        items: [
          FloatingBottomNavItem(
            inactiveIcon:Icon(Icons.fit_screen_outlined,
            color: Colors.white,
            size: 40,),
            activeIcon: Icon(Icons.fit_screen,
            color: Color.fromRGBO(255, 170, 4, 10),
            size: 40,),
          ),
          FloatingBottomNavItem(

            inactiveIcon: Icon(Icons.qr_code_2_outlined,
            size: 32,
            color: Colors.white,),
            activeIcon: Icon(Icons.qr_code_2,
            size: 32,
            color: Color.fromRGBO(255, 170, 4, 10),),
          ),

        ],
        initialPageIndex: 0,
        backgroundColor: Color.fromRGBO(10, 10, 10, 100),
        bottomPadding: 0,
        elevation: 0,
        radius: 15,
        width: 250,
        height: 50
    );
  }
}
