import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Shakhura extends StatelessWidget {
  const Shakhura ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Shakhura Tylos Necropolis'),
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
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Area: Shakhura',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),

            const SizedBox(height: 32),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Shakhura  Tylos Necropolis',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                      'The archaeological site of Shakhura, today protected by the Bahrain Authority for Culture and Antiquities, is located northwest of the village of the same name, about 700m to the south of Budaiya Highway. It presently occupies about 4 hectares, including several low hills covering unexcavated cemeteries from the Tylos period (c. 150 BCE to 250 CE). A group of excavated underground graves of the Late Dilmun period (c. 900-800 BCE) also appear in the southeastern sector of the site.',
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
                  textAlign: TextAlign.justify,
                  'Location',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                subtitle: Text(
                  'Shakhurah Tylos Necropolis, Shakhurah, Bahrain',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = "https://www.google.com/maps/place/26%C2%B012'48.8%22N+50%C2%B030'03.5%22E/@26.21355,50.500969,16z/data=!4m4!3m3!8m2!3d26.21355!4d50.500969?hl=en-US";
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
