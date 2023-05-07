
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Qalat extends StatelessWidget {
  const Qalat ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Qalat al Bahrain site and museum'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Top Must-do’s, Archeology & Heritage',
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
                'Area: Karbabad',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n\nFort\nDaily, 8:00am to 6:00pm \nMuseum\n8:00am – 6:00pm(Closed on Mondays)  ',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contact: 0097317298545',
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
                      'About Qalat al Bahrain Site  \n          & Museum',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                      'Known as Dilmun in ancient times, Bahrain’s rich trading history is reflected in numerous archaeological digs around the island. Qalat al-Bahrain site (Bahrain Fort site) is among the most exciting of them and is registered as a UNESCO World Heritage Site.',
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
                  'Building 3618, Road 3863, Block 438 Bahrain, Bahrain',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Bahrain+Fort+Museum/@26.2340947,50.518559,17z/data=!4m10!1m2!2m1!1sQalat+al+Bahrain+site+and+museum!3m6!1s0x3e49a5a5f7afc30d:0x8afc3991d708eaef!8m2!3d26.2350941!4d50.5224021!15sCiBRYWxhdCBhbCBCYWhyYWluIHNpdGUgYW5kIG11c2V1bVoiIiBxYWxhdCBhbCBiYWhyYWluIHNpdGUgYW5kIG11c2V1bZIBBm11c2V1bZoBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VNeU1DMUlRVlJCRUFF4AEA!16s%2Fg%2F11r3756rhv?hl=en-US';
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
