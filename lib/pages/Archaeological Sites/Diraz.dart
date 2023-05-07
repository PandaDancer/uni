
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Diraz extends StatelessWidget {
  const Diraz ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('The Diraz Temple'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Archeology & Heritage',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Semantics(
                label: 'Area: Diraz',
                child: Text(
                  'Area: Diraz',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),
              ),
            ),

            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n –  ',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),

            const SizedBox(height: 32),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About The Diraz Temple',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'The important site of Diraz was an extensive Dilmun settlement before the rapid urbanisation in Bahrain since the 1980s. This archaeological site is today only preserved in its southwestern corner, and reduced to a remnant of about 700 sq. meters. It is located just to the north of Budaiya Highway. It was partly explored by a British Expedition in 1973-75, in cooperation with the Direction of Archaeology of Bahrain. This area has revealed a temple from the Dilmun period, probably built in the early 2nd millennium BCE. Its architectural elements differ not only from the temples of Mesopotamia but also from the nearby temple of Barbar.',
                         style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                subtitle: Text(
                  'The Diraz Temple, Diraz, Bahrain,',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Diraz+Temple%D8%8C+Diraz+Bahrain,+Barbar,+Bahrain%E2%80%AD/@26.217013,50.4720107,17z/data=!3m1!4b1!4m6!3m5!1s0x3e49ba8a2b9a1da9:0x748a7c43f62691d1!8m2!3d26.2170423!4d50.4745574!16s%2Fg%2F11bvtf4xf2?hl=en-US';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },


              ),
            )],
        ),
      ),
    );
  }
}
