import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:untitled28/utils/styles.dart";

class LabelSection extends StatelessWidget {
  const LabelSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Discover',
          style: TextStyle(
            fontSize: 30.0, // Change the font size here
            fontWeight: FontWeight.bold, // Optional: Change the font weight here
            color: black, // Optional: Change the text color here
            // You can add more text styles as needed
          ),
        ),
      ],
    );
  }
}
