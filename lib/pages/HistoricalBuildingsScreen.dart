import 'package:flutter/material.dart';
import 'package:untitled28/components/HistoricCard2.dart';
import 'package:untitled28/components/LABEL%204.dart';
import 'package:untitled28/components/MuesemCards.dart';
import 'package:untitled28/components/label%202.dart';
import 'package:untitled28/components/label%203.dart';
import 'package:untitled28/components/MuesemCards2.dart';
import "package:untitled28/utils/styles.dart";

import '../components/HistoricCard1.dart';

class HistoricalBuildingsScreen extends StatelessWidget {
  const HistoricalBuildingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // set the background color to gray
        title: const Text('Historical Buildings'), // set the title to "Museums"
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: medium),

            Expanded(
              child: Transform.scale(
                scale: 0.85,
                child: PageView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: const [
                          HCard(),
                          SizedBox(height: medium),
                          Divider(
                            color: Colors.grey,
                            thickness: 1.375,
                            height: 5,
                          ),
                          SizedBox(height: 17.5),

                          HCard2(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
