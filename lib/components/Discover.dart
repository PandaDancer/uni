import 'package:flutter/material.dart';
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Arch.dart';
import 'package:untitled28/pages/NaturalLandscape.dart';
import '../pages/HistoricalBuildingsScreen.dart';
import '../pages/Muesem.dart';


class Discover2 extends StatelessWidget {
  const Discover2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/hitorical.jpg', 'Historical Buildings'),
      Destination('assets/images/natural.jpg', 'Natural Landscape'),

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
              if (dest.name == 'Historical Buildings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoricalBuildingsScreen(),
                  ),
                );
              } else if (dest.name == 'Natural Landscape') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NaturalLandscape(),
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
