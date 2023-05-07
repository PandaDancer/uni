import 'package:flutter/material.dart';
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Arch.dart';
import 'package:untitled28/pages/NaturalLandscape.dart';
import '../pages/Muesem/BaniJamra.dart';
import '../pages/HistoricalBuildingsScreen.dart';
import '../pages/Muesem.dart';
import '../pages/Muesem/Pearling Path Visitors Centre.dart';
import '../pages/Muesem/AlKhamisV.dart';
import '../pages/Muesem/tree.dart';
import '../pages/Muesem/SheikSalman.dart';


class MuseumCards2 extends StatelessWidget {
  const MuseumCards2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [

      Destination('assets/images/tree.jpg', 'Tree of Life Visitors Centre'),
      Destination('assets/images/Sheikh SALMAN.jpg', 'Sheikh Salman Bin Ahmed Al Fateh Museum'),
      Destination('assets/images/pearling path.jpg', 'Pearling Path Visitors Centre'),
      Destination('assets/images/AlKhamisV.jpg', 'Al Khamis Visitor ’s Centre'),
      Destination('assets/images/BaniJamra.jpg', 'Bani Jamra Weaving Textiles Factory'),
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
              } else if (dest.name == 'Sheikh Salman Bin Ahmed Al Fateh Museum') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SheikhSalman(),
                  ),
                );
              } else if (dest.name == 'Pearling Path Visitors Centre') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PearlingPath(),
                  ),
                );
              } else if (dest.name == 'Tree of Life Visitors Centre') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Tree(),
                  ),
                );
              } else if (dest.name == 'Bani Jamra Weaving Textiles Factory') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaniJamra(),
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
