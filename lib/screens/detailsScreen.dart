import 'package:flutter/material.dart';
import 'package:rahhal/classes/Details_class.dart';
import 'package:rahhal/widgets/DetailsAppBar.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.element});
  final detailsClass element;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 100),
      body: CustomScrollView(

        slivers: [

          DetailsAppDar(
              link:element.image),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color.fromRGBO(68, 68, 68, 70),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text('Distance',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                  Text('1.1''km',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color.fromRGBO(68, 68, 68, 70),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text('Temp',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text('26C',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color.fromRGBO(68, 68, 68, 70),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text('Rate',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text('4.8',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                   Text(
                    element.name,
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromRGBO(255, 170, 4, 10),
                    ),
                  ),
                  const Text('Description',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),),
                   Text(element.describtion,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
