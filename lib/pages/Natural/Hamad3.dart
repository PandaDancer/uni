import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hamad3 extends StatelessWidget {
  const Hamad3 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Madinat Hamad 3 Burial Mounds Field - Dar Kulayb'),
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
                'Area: DAR KULAYB',
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
                      'Madinat Hamad 3 Burial Mounds Field - Dar Kulayb',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'This is one of the components of the UNESCO World Heritage Site “Dilmun Burial Mounds”. The Madinat Hamad 3 cemetery is the southernmost of the Madinat Hamad fields with a high concentration of Late Type burial mounds. Similarly, to the other burial mound fields, it can be assumed that the cemetery belongs to an individual Dilmunite settlement of which only its cemetery survives. 1,331 burial mounds remain as the last witnesses of this community. Due to its vicinity to the village of Dar Kulayb it is also known as the Dar Kulayb Burial Mound Field.' ,
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
                  "Madinat Hamad 3 Burial Mounds Field - Dar Kulayb,Hamad Town, Bahrain",
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = "https://www.google.com/maps/place/26%C2%B007'16.0%22N+50%C2%B029'57.0%22E/@26.121111,50.499167,16z/data=!4m4!3m3!8m2!3d26.121111!4d50.499167?hl=en-US";
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
