import 'package:flutter/material.dart';
import 'package:rahhal/widgets/DetailsAppBar.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 100),
      body: CustomScrollView(

        slivers: [

          const DetailsAppDar(),
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
                  const Text(
                    'Pyramids',
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
                  const Text('For a GUI application to do anything, it has to have actions: users want to tell the application to do something. Actions are often simple functions that directly perform the action (such as set a value or save a file). In a larger application, however, things are more complex: the code for invoking the action, and the code for the action itself might need to be in different places. Shortcuts (key bindings) might need definition at a level that knows nothing about the actions they invoke.',
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
