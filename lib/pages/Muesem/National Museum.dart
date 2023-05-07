
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class NationalMuseum extends StatelessWidget {
  const NationalMuseum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Bahrain National Museum'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Top Must-do’s',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Area: Sheikh Hamad Causeway,\nEast Corniche',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n9:00am – 8:00pm\n(Closed on Tuesdays)',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contact: 0097317298718',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Bahrain National Museum',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                      'One of the first museums in the Gulf, the Bahrain National Museum opened in 1988. The site itself, on the edge of the sea, is a tremendous attraction, adding to its contemporary ambience which is influenced by the white travertine façade and dramatic courtyard decorated with contemporary sculptures. The exhibition halls showcase artefacts uncovered in the numerous archaeological sites in Bahrain and underpinning the longstanding history of the island. The rich collection covers 6000 years of Bahrain’s history.',
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
                  'Bahrain National Museum, Al Fatih Highway, Manama, Bahrain',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),


                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Bahrain+National+Museum/@26.2408014,50.5955111,17z/data=!3m1!4b1!4m15!1m8!3m7!1s0x3e49a7f3ce5331bf:0xb088fba62e92b067!2sBahrain+National+Museum!8m2!3d26.2408014!4d50.598086!10e1!16s%2Fg%2F11rwmsxscc!3m5!1s0x3e49a7f3ce5331bf:0xb088fba62e92b067!8m2!3d26.2408014!4d50.598086!16s%2Fg%2F11rwmsxscc?hl=en-US';
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
