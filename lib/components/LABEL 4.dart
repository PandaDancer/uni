import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:untitled28/utils/styles.dart";

class LabelSection4 extends StatelessWidget {
  const LabelSection4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'House Museums',
          style: TextStyle(
            fontSize: 20.0, // Change the font size here
            fontWeight: FontWeight.bold, // Optional: Change the font weight here
            color: black, // Optional: Change the text color here
            // You can add more text styles as needed
          ),
        ),
      ],
    );
  }
}
