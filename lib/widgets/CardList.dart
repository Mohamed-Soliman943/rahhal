
import 'package:flutter/material.dart';
import 'package:rahhal/screens/detailsScreen.dart';
import '../classes/card_class.dart';
import 'Card.dart';

class CardList extends StatelessWidget {
  CardList({super.key});

  List<cardClass> Cards=[
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg',

    ),
    cardClass(
        name: 'Cairo Tower',
        coordinates: '30.046132956124648, 31.224309524745323',
        image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Cairo_Tower_by_day.jpg/450px-Cairo_Tower_by_day.jpg',
    ),
    cardClass(
        name: 'Tut Ankh Amoun Mask',
        coordinates: '30.04851169999424, 31.233656667074452',
        image: 'https://cdn.i-scmp.com/sites/default/files/styles/portrait/public/d8/images/canvas/2022/11/21/9c9fa39f-468a-457c-8054-c54302dea74a_c853a78f.jpg?itok=0rswC4yy&v=1669027200',
    ),
    cardClass(
      name: 'Cairo Tower',
      coordinates: '30.046132956124648, 31.224309524745323',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Cairo_Tower_by_day.jpg/450px-Cairo_Tower_by_day.jpg',
    ),
    cardClass(
      name: 'Cairo Tower',
      coordinates: '30.046132956124648, 31.224309524745323',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Cairo_Tower_by_day.jpg/450px-Cairo_Tower_by_day.jpg',
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: Cards.length,
      itemBuilder:(context,index){
        return CardWidget(
          element: Cards[index],
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context){
              return const DetailsScreen();
            }));
          },
        );
      },



    );


  }
}
