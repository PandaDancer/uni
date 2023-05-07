import 'package:flutter/material.dart';
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Arch.dart';
import 'package:untitled28/pages/Muesem/Memory.dart';
import 'package:untitled28/pages/NaturalLandscape.dart';
import '../pages/HistoricalBuildingsScreen.dart';
import '../pages/Muesem.dart';
import '../pages/Muesem/National Museum.dart';
import '../pages/Muesem/Pearling Path Visitors Centre.dart';

class MuseumCards extends StatelessWidget {
  const MuseumCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/m.jpg', 'Bahrain National Museum'),
      Destination('assets/images/memory.jpg', 'Memory of Manama - Khalaf House'),
    ];

    return SizedBox(
      height: 250,
      child: ListView.separated(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var dest = destinations[index];
          return GestureDetector(
            onTap: () {
              if (dest.name == 'Bahrain National Museum') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NationalMuseum(),
                  ),
                );
              } else if (dest.name == 'Memory of Manama - Khalaf House') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Memory(),
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

        separatorBuilder: (BuildContext context, int index) {
          return const Padding(
              padding: EdgeInsets.only(right: 15),
          child: VerticalDivider(
          width: 10,
          thickness: 2,
          color: Colors.grey,
          ));
        },
      ),
    );
  }
}
