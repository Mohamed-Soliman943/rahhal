import 'package:flutter/material.dart';

import '../classes/card_class.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.element, this.onTap});
  final cardClass element;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(

          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: const [BoxShadow(
              spreadRadius: 5.0,
              blurRadius: 7.0,
              color: Colors.black54,
            ),],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image:DecorationImage(
              image: NetworkImage(element.image,
              ),fit: BoxFit.cover,
            ) ,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Container(
                  // height: 34,
                  // width: double.minPositive,
                  decoration: BoxDecoration(
                    color:  const Color.fromRGBO(0, 0, 0, 100),
                    borderRadius: BorderRadius.circular(20),

                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(element.name,
                            style:const TextStyle(
                              fontSize: 25,
                              //backgroundColor: Colors.black54,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(element.coordinates,
                            style:const TextStyle(
                              fontSize: 18,
                              //backgroundColor: Colors.black54,
                              color: Color.fromRGBO(255, 170, 4, 10),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
