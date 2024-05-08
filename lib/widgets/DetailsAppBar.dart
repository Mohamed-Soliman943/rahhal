import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsAppDar extends StatelessWidget {
  const DetailsAppDar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
      ),
      expandedHeight: 300,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      pinned: true,
      collapsedHeight: 100,
      flexibleSpace: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 340,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg'),
                  fit: BoxFit.cover)),
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
