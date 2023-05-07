import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class West extends StatelessWidget {
  const West ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('A´Ali West Burial Mounds Field'),
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
                'Area: A´ALI',
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
                      'About A´Ali West Burial Mounds Field',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                      'A´ali West is one of the components of the UNESCO World Heritage Site “Dilmun Burial Mounds”. It is located in Buri village, but its official UNESCO appellation “A’ali West” is justified by the fact that this burial mound field and the A´ali East Burial Mound Field once formed a single physical entity partially split by a large wadi and nowadays divided by the Shaikh Khalifa Bin Salman Highway. Together, they number 5,392 burial mounds.',
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
                  'A´Ali West Burial Mounds Field, Buri, Bahrain',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = "https://www.google.com/maps/place/26%C2%B008'46.0%22N+50%C2%B030'28.0%22E/@26.146111,50.507778,16z/data=!4m4!3m3!8m2!3d26.146111!4d50.507778?hl=en-US";
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
