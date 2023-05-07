
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Muharraq extends StatelessWidget {
  const Muharraq ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Old Houses of Muharraq'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Archeology & Heritage, Top Must-do’s',
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
                textAlign: TextAlign.justify,
                'Timing:\n\nShaikh Isa Bin Ali House:\nSun - Tue, 8:00am - 2:00pm\nWed - Sat, 9:00am - 6:00pm\n            Fri, 3:00pm - 6:00pm\n\nShaikh Ebrahim Centre:\nSat - Thur, 9:00am - 1:00pm\n                   4:00pm - 7:00pm',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height:16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contact: 0097317322549',
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
                      'About Old Houses of Muharraq',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),

                    Text(
                      textAlign: TextAlign.justify,
                        'Muharraq, the former capital of Bahrain, is known for its cultural contributions through the many restored traditional Bahraini houses that can be found amidst the narrow lanes and byways. The Sheikh Isa bin Ali House is Bahrain’s most impressive example of Gulf Islamic architecture featuring four courtyards, beautifully carved wooden doors, and perforated gypsum panels.',
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
                  'Old Houses of Muharraq, Muharraq, Bahrain',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Traditional+Houses+of+Muharraq/@26.2541137,50.6092491,17z/data=!3m1!4b1!4m6!3m5!1s0x3e49a73b548eecc7:0x6a973be60f4fc618!8m2!3d26.2541137!4d50.611824!16s%2Fg%2F11s18s1jwv?hl=en-US';
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
