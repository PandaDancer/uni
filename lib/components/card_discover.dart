import 'package:flutter/material.dart';
import 'package:untitled28/utils/styles.dart';
import 'package:untitled28/pages/Arch.dart';

class CardDiscover extends StatelessWidget {
  const CardDiscover({Key? key, required this.image, required this.name}) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Container(
        margin: const EdgeInsets.only(right: small),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        height: 250,
        width: 200,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26),
                ),
              ),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: black,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
