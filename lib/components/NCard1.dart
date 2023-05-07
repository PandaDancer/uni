import 'package:flutter/material.dart';
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Natural/A%C2%B4Ali%20East%20Burial%20Mounds%20Field.dart';
import 'package:untitled28/pages/Natural/Jannusan%20Tylos%20Necropolis.dart';
import '../pages/Historical Buildings/PostOffice.dart';
import '../pages/Historical Buildings/Siyadi House.dart';
import '../pages/Natural/Al-Hajar Dilmun and Tylos Cemeteries.dart';
import '../pages/Natural/A´Ali West Burial Mounds Field.dart';
import '../pages/Natural/Shakhura Tylos Necropolis.dart';


class NCard1 extends StatelessWidget {
  const NCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [

      Destination('assets/images/Jannusan.jpg', 'Jannusan Tylos Necropolis'),
      Destination('assets/images/Shakhura.jpg', 'Shakhura Tylos Necropolis'),
      Destination('assets/images/Hajar.jpg', 'Al-Hajar Dilmun and Tylos Cemeteries'),
      Destination('assets/images/West.jpg', 'A´Ali West Burial Mounds Field'),
      Destination('assets/images/East.jpg', 'A´Ali East Burial Mounds Field'),
      //MuseumsScreen


    ];

    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var dest = destinations[index];
          return GestureDetector(
            onTap: () {
              if (dest.name == 'Jannusan Tylos Necropolis') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Jannusan(),
                  ),
                );
              } else if (dest.name == 'Shakhura Tylos Necropolis') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Shakhura(),
                  ),
                );
              } else if (dest.name == 'Al-Hajar Dilmun and Tylos Cemeteries') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hajar(),
                  ),
                );
              } else if (dest.name == 'A´Ali West Burial Mounds Field') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const West(),
                  ),
                );
              } else if (dest.name == 'A´Ali East Burial Mounds Field') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const East(),
                  ),
                );






              }
            },
            child: CardDiscover(
              image: dest.image,
              name: dest.name,
            ),
          );
        },
      ),
    );
  }
}
