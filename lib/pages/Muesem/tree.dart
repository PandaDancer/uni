import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tree extends StatelessWidget {
  const Tree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Tree of Life Visitors Centre'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Marine & Wildlife, Top Must-do’s',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Area: Sakhir',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n12:00pm – 5:00pm (Daily)',
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
                      'About Tree of Life Visitors Centre',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                      'A marvel in the desert the Tree of Life is famous for surviving for over 100 years despite its existence with no source of water. Visitors can observe this natural beauty from inside the visitors’ Centre, which includes information about the artefacts discovered at the site in addition to a small amphitheater to host outdoor events.',
                      style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
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
                'Tree of Life Visitors Centre, Dirt Road to Tree of Life,Jebel Dukhan, Bahrain',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),

              onTap: () async {
                final url = 'https://www.google.com/maps/place/Tree+of+Life/@25.9941416,50.5804163,17z/data=!3m1!4b1!4m6!3m5!1s0x3e49ad2161891555:0x6a3b167814b8c131!8m2!3d25.9941416!4d50.5829912!16zL20vMGNrNGZw?hl=en-US';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },


            )],
        ),
      ),
    );
  }
}
