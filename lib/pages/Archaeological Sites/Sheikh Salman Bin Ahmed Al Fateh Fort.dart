
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Sheikh extends StatelessWidget {
  const Sheikh ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Sheikh Salman Bin Ahmed Al Fateh Fort'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Archeology & Heritage Top Must-do’s',
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
                'Area: Riffa',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n(Closed for Renovations)',
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
                      'About Sheikh Salman Bin Ahmed Al Fateh Fort',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                       'Sheikh Salman bin Ahmed Al-Fateh  Fort, commonly known as Riffa Fort due to its location in Riffa, is an historic landmark and stands witness to one of the most important junctures in Bahrain’s history. Within its beautiful architecture lives the memory of the ruling family of Bahrain, the Al Khalifas. A series of programs organized by the Ministry of Culture have brought life back to the fort and not only present a chronological history of the Al Khalifa family but showcase the interior space designed by the French firm, La Meduse and the local engineering firm, PAD, which took its inspiration from the fort’s history and people.',
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
                  'Sheikh Salman bin Ahmed Fort, Rd No 368, Riffa 903, Bahrain',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Sheikh+Salman+bin+Ahmed+Fort/@26.1177323,50.5604457,17z/data=!3m1!4b1!4m6!3m5!1s0x3e49ac50d7625ffd:0x81907ad88fb4e595!8m2!3d26.1177323!4d50.5630206!16zL20vMGJkMmww?hl=en-US';
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
