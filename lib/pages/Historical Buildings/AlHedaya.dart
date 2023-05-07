
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Hedaya extends StatelessWidget {
  const Hedaya ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('AL Hedaya AL Khalifia School'),
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
              child: Text(
                'Area: Muharraq',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n 8:00am - 2:00pm',
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
                      'About Post Office',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'Founded in 1919 in the northern part of the city of Muharraq, Al Hedaya Al Khalifia is the first modern school in Bahrain, and is considered a significant milestone of modern education in the Kingdom. The building was restored to host a permanent display dedicated to documenting the history of education in the Kingdom.',
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
                  textAlign: TextAlign.justify,
                  'AL Hedaya AL Khalifia School, Sh Khalifa Bin Mohammed Ave, Al Hidd, Bahrain',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Historical+Al+Hedaya+Al+Khalifiyah+School/@26.2622811,50.606266,17z/data=!4m10!1m2!2m1!1sAL+Hedaya+AL+Khalifia+School!3m6!1s0x3e49a740cba0fea9:0xc4cb731a8f137ea9!8m2!3d26.2622638!4d50.6086038!15sChxBTCBIZWRheWEgQUwgS2hhbGlmaWEgU2Nob29skgEGc2Nob29s4AEA!16s%2Fg%2F11h14qp7vx?hl=en-US';
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
