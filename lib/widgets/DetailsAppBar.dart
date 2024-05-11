
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsAppDar extends StatelessWidget {
  const DetailsAppDar({super.key, required this.link});
  final String link;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
      ),
      expandedHeight: 300,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      pinned: true,
      collapsedHeight: 100,
      flexibleSpace: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 340,
              width: double.infinity,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          link),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              right: 20,
              top: 50,
              child:GestureDetector(
                onTap: (){},
                child: Container(
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 170, 4, 1),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  width: 125,
                  height: 40,
                  child: const Text('Use Rahhal',
                  style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),

      // bottom: PreferredSize(
      //   preferredSize: const Size.fromHeight(0.0),
      //   child: Container(
      //   ),
      // ),


    );
  }
}
