import 'package:flutter/material.dart';
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Arch.dart';
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


class HCard extends StatelessWidget {
  const HCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [

      Destination('assets/images/postoffice.jpg', 'Post Office'),
      Destination('assets/images/muharaq.jpg', 'Old Houses of Muharraq'),
      Destination('assets/images/Mosque.jpg', 'Al Khamis Mosque & Visitor Centre'),
      Destination('assets/images/Siyada.jpg', 'Siyada House'),

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
              if (dest.name == 'Al Khamis Visitor ’s Centre') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AlKhamisV(),
                  ),
                );
              } else if (dest.name == 'Old Houses of Muharraq') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Muharraq(),
                  ),
                );
              } else if (dest.name == 'Al Khamis Mosque & Visitor Centre') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Mosque(),
                  ),
                );
              } else if (dest.name == 'Post Office') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PostOffice(),
                  ),
                );
              } else if (dest.name == 'Siyada House') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Siyada(),
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
