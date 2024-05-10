import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rahhal/screens/scanningScreen.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import '../firebase_options.dart';
import 'exploreScreen.dart';
import 'favouriteScreen.dart';
import 'home.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation:0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.search_outlined,
          color: Colors.white,
          size: 30
          ,),
        title: Center(
          widthFactor: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,

            ),
            child:Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/horas.png',width: 30,height: 30,),
                const Text('R A H H A L',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily:'raleway',
                    color: Colors.white,

                  ),),
              ],
            ),
            // width: 80,
            // height: 80,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 20.0,
              child: Icon(Icons.person,
                size: 40,
                color: Colors.white,),
            ),
          ),
        ],

      ) ,
      body:Center(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,

          children:const [
            HomeScreen(),
            ScanScreen(),
            ExploreScreen(),
            FavouriteScreen(),

          ],

        ),
      ),

      backgroundColor: const Color.fromRGBO(40, 40, 40, 100),

      bottomNavigationBar: WaterDropNavBar(
        waterDropColor: const Color.fromRGBO(255, 170, 4, 10),
        inactiveIconColor: Colors.white,
        iconSize: 30,
        bottomPadding: 5.0,
        backgroundColor: Colors.transparent,
        onItemSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            filledIcon: Icons.home,
            outlinedIcon: Icons.home_outlined,
          ),

          BarItem(
            filledIcon: Icons.qr_code,
            outlinedIcon: Icons.qr_code_outlined,
          ),
          BarItem(
            filledIcon: Icons.explore,
            outlinedIcon: Icons.explore_outlined,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded
          ),
        ],
      ),
    );

  }
}
