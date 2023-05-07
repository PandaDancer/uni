
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Siyada extends StatelessWidget {
  const Siyada ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Siyadi House'),
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
                'Area:Muharraq',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\nOpen 24 hours',
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
                      'About Siyadi House',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'The house of Ahmed bin Jasim Siyadi, a former well-known pearl merchant in the  19th century, is a beautiful example of a historic style building that Muharraq is known for. Its three story façade features uniquely curved corners and beautiful stucco work. The house is part of a larger complex of buildings that contain a mosque and majlis. The house is included in the “Pearling: Testimony of an Island Economy” project and was designated a UNESCO World Heritage Site in 2012.',
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
                  'Seyadi House, Rd No 633, Muharraq, Bahrain, Bahrain',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Seyadi+House/@26.2553522,50.610101,17z/data=!3m1!4b1!4m6!3m5!1s0x3e49a61991c7b2f5:0xca4bc8949b115e70!8m2!3d26.2553522!4d50.6126759!16s%2Fm%2F0j46nkb?hl=en-US';
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
