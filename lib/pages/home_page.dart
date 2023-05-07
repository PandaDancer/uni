import 'package:flutter/material.dart';
import 'package:untitled28/components/heading.dart';
import "package:untitled28/components/label.dart";
import "package:untitled28/utils/styles.dart";

import '../components/Discover.dart';
import '../components/discover_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HeadingSection(),
              Divider(
                color: Colors.grey,
                thickness: 1.375,
                height: 5,
              ),
              SizedBox(height: medium),
              Discover(),
              SizedBox(height: medium),
              Divider(
                color: Colors.grey,
                thickness: 1.375,
                height: 5,
              ),
              Discover2(),
            ],
          ),
        ),
      ),
    );
  }
}
