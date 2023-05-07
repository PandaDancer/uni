
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Mosque extends StatelessWidget {
  const Mosque ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Al Khamis Mosque & Visitor Centre'),
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
                'Area: Bilad Al Qadim, \nSheikh Salman Highway',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n\n12:00pm – 5:00pm \n(Closed on Mondays)',
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
                      'About Al Khamis Mosque \n       & Visitor Centre',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'Built around 692 AD, Al Khamis Mosque is one of the oldest mosques in the Arab world. The identical twin minarets on this ancient Islamic monument make it easily recognizable. The foundation dates back to the 11th century and has been rebuilt in the 14th and 15th centuries. During this reconstruction the twin minarets were added.',
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
                  'Al Khamis Mosque & Visitor Centre, Sh Salman Hwy, Tashan, Bahrain',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Al+Khamis+Mosque/@26.2082197,50.5101984,14z/data=!4m10!1m2!2m1!1sAl+Khamis+Mosque+%26+Visitor+Centre!3m6!1s0x3e49af98e5d89103:0x5fb5ee9319e228f3!8m2!3d26.2082197!4d50.5483072!15sCiFBbCBLaGFtaXMgTW9zcXVlICYgVmlzaXRvciBDZW50cmVaIyIhYWwga2hhbWlzIG1vc3F1ZSAmIHZpc2l0b3IgY2VudHJlkgETaGlzdG9yaWNhbF9sYW5kbWFya5oBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSTkxVNXhUemhCUlJBQuABAA!16zL20vMGNqdHRu?hl=en-US';
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
