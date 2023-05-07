  import 'package:flutter/material.dart';
  import 'package:untitled28/components/card_discover.dart';
  import 'package:untitled28/models/destination.dart';
  import 'package:untitled28/pages/Arch.dart';
  import 'package:untitled28/pages/NaturalLandscape.dart';
  import '../pages/Archaeological Sites/BarBar.dart';
  import '../pages/Archaeological Sites/Diraz.dart';
  import '../pages/Archaeological Sites/Qalat.dart';
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


  class ACard1 extends StatelessWidget {
    const ACard1({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      List<Destination> destinations = [

        Destination('assets/images/Bar.jpg', 'Barbar Temples'),
        Destination('assets/images/Diraz.jpg', 'The Diraz Temple'),
        Destination('assets/images/qalat.jpg', 'Qalat al Bahrain site and Museum'),


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
                if (dest.name == 'Barbar Temples') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BarBar(),
                    ),
                  );
                } else if (dest.name == 'Qalat al Bahrain site and Museum')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Qalat(),
                    ),
                  );
                } else if (dest.name == 'The Diraz Temple') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Diraz(),
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
