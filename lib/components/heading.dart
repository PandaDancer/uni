
import 'package:flutter/material.dart';
import "package:untitled28/utils/styles.dart";

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

          children: [

            Container(
              alignment: Alignment.topRight,

              decoration: const BoxDecoration(

                image: DecorationImage(
                  image: AssetImage('assets/images/icon3.png'),
                ),
              ),
              height: 125,
              width: 125,
            ),
            const SizedBox(width: small),
            Center(
              child: Column(



                children: [

                  Text(


                    'Bahrain Tour',
                    style: heading3,


                  )
                ],
              ),
            ),

          ],
        );

  }
}