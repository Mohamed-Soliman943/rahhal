import 'package:flutter/cupertino.dart';
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
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body:Stack(
        children: [
          RiveAnimation.asset('assets/animations/exploreAnimation',),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.0,left: 2.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://d2pas86kykpvmq.cloudfront.net/images/humans-3.0/ava-4.png'),
                radius: 80,
                ),
            ),
          ),
          Positioned(
              right: 30,
              top: 50,
              child:Container(
                width: 170,
                height: 190,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(10, 10, 10, 50),
                  borderRadius: BorderRadius.circular(20)

                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network('https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg',
                        width: 150,
                        height: 100,),
                      ),
                      Text('Pyramids',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 170, 4, 1),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          width: 150,
                          height: 40,
                          child: const Text('Go To',
                            style: TextStyle(
                              fontSize: 20,
                            ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ) ),
          Positioned(
              left: 30,
              bottom: 50,
              child:Container(
                width: 170,
                height: 190,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(10, 10, 10, 50),
                    borderRadius: BorderRadius.circular(20)

                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network('https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg',
                          width: 150,
                          height: 100,),
                      ),
                      Text('Pyramids',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 170, 4, 1),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          width: 150,
                          height: 40,
                          child: const Text('Go To',
                            style: TextStyle(
                              fontSize: 20,
                            ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ) ),
        ],
      ),
    );
  }
}
