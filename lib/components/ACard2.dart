
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Archaeological%20Sites/Arad%20Fort.dart';
import 'package:untitled28/pages/Archaeological%20Sites/Sheikh%20Salman%20Bin%20Ahmed%20Al%20Fateh%20Fort.dart';
import 'package:flutter/material.dart';
import '../pages/Archaeological Sites/ain.dart';



class ACard2 extends StatelessWidget {
  const ACard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [

      Destination('assets/images/ain.jpg', 'Ain Umm Al Sujur Archaeological Site'),
      Destination('assets/images/Arad.jpg', 'Arad Fort'),
      Destination('assets/images/Sheikh.jpg', 'Sheikh Salman Bin Ahmed Al Fateh Fort'),


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
              if (dest.name == 'Ain Umm Al Sujur Archaeological Site') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Ain(),
                  ),
                );
              } else if (dest.name == 'Arad Fort') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Arad(),
                  ),
                );
              } else if (dest.name == 'Sheikh Salman Bin Ahmed Al Fateh Fort') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sheikh(),
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
