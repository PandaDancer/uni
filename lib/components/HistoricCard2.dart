import 'package:flutter/material.dart';
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Arch.dart';
import 'package:untitled28/pages/Historical%20Buildings/AlHedaya.dart';
import 'package:untitled28/pages/Historical%20Buildings/AlJasraHouse.dart';
import 'package:untitled28/pages/Historical%20Buildings/Dar%20Al%20Muharraq.dart';
import 'package:untitled28/pages/Historical%20Buildings/SheikhIsaBinAli.dart';
import 'package:untitled28/pages/NaturalLandscape.dart';
import '../pages/Historical Buildings/Al Khamis Mosque & Visitor Centre.dart';
import '../pages/Historical Buildings/Old Houses of Muharraq.dart';
import '../pages/Historical Buildings/PostOffice.dart';
import '../pages/Historical Buildings/Siyadi House.dart';
import '../pages/Muesem/BaniJamra.dart';
import '../pages/HistoricalBuildingsScreen.dart';
import '../pages/Muesem.dart';
import '../pages/Muesem/Pearling Path Visitors Centre.dart';
import '../pages/Muesem/AlKhamisV.dart';
import '../pages/Muesem/tree.dart';
import '../pages/Muesem/SheikSalman.dart';


class HCard2 extends StatelessWidget {
  const HCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [

      Destination('assets/images/Hedaya.jpg', 'AL Hedaya AL Khalifia School'),
      Destination('assets/images/Dar.jpg', 'Dar Al Muharraq'),
      Destination('assets/images/Jasra.jpg', 'Al Jasra House'),
      Destination('assets/images/Isa.jpg', 'Sheikh Isa Bin Ali House'),

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
              if (dest.name == 'AL Hedaya AL Khalifia School') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hedaya(),
                  ),
                );
              } else if (dest.name == 'Dar Al Muharraq') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Dar(),
                  ),
                );
              } else if (dest.name == 'Al Khamis Mosque & Visitor Centre') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Mosque(),
                  ),
                );
              } else if (dest.name == 'Al Jasra House') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Jasra(),
                  ),
                );
              } else if (dest.name == 'Sheikh Isa Bin Ali House') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Isa(),
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
