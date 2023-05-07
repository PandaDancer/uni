import 'package:flutter/material.dart';
import 'package:untitled28/components/card_discover.dart';
import 'package:untitled28/models/destination.dart';
import 'package:untitled28/pages/Natural/A%C2%B4Ali%20East%20Burial%20Mounds%20Field.dart';
import '../pages/Natural/A´Ali Early Islamic Settlement.dart';
import '../pages/Natural/A´Ali West Burial Mounds Field.dart';
import '../pages/Natural/Hamad1.dart';
import '../pages/Natural/Hamad2.dart';
import '../pages/Natural/Hamad3.dart';



class NCard2 extends StatelessWidget {
  const NCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [

      Destination('assets/images/H1.jpg', 'Madinat Hamad 1 Burial Mounds Field - Buri'),
      Destination('assets/images/H2.jpg', 'Madinat Hamad 2 Burial Mounds Field - Karzakkan'),
      Destination('assets/images/H3.jpg', 'Madinat Hamad 3 Burial Mounds Field - Dar Kulayb'),
      Destination('assets/images/settle.jpg', 'A´Ali Early Islamic Settlement'),

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
              if (dest.name == 'Madinat Hamad 1 Burial Mounds Field - Buri') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hamad1(),
                  ),
                );
              } else if (dest.name == 'Madinat Hamad 2 Burial Mounds Field - Karzakkan') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hamad2(),
                  ),
                );
              } else if (dest.name == 'Madinat Hamad 3 Burial Mounds Field - Dar Kulayb') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Hamad3(),
                  ),
                );
              } else if (dest.name == 'A´Ali Early Islamic Settlement') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const settle(),
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
