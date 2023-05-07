
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Arad extends StatelessWidget {
  const Arad ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Arad Fort'),
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
                'Area: Arad',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n\n12:00pm – 5:00pm \nMuseum\n(Closed on Fridays) ',
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
                      'About Arad Fort',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'Strategically located as a sea passage, Arad fort is a typical example of Omani military architecture at the end of the 15th and early 16th centuries. This fort was once the site of fierce battles and underwent different construction phases. All though it is not clear when it was constructed it has played a major role in the defense of Bahrain against marauders through the centuries. It was restored in the 1980s using only authentic material.  It is nicely illuminated at night and hosts seasonal festivals throughout the year.',
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
                  'Arad Fort, Rd No 4233, Arad, Bahrain',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Arad+Fort/@26.252498,50.6246227,17z/data=!3m1!4b1!4m6!3m5!1s0x3e49a627e35b53ab:0xc6990946dc9df02e!8m2!3d26.252498!4d50.6271976!16zL20vMGJkMzNs?hl=en-US';
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
