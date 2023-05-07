import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PearlingPath extends StatelessWidget {
  const PearlingPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Pearling Path Visitors Centre'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Museums, Archeology & Heritage',
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
                'Area: Between Avenue 10\nand Tujjar Avenue – Muharraq',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n12:00 pm – 6:00 pm\n(Closed on Sundays)',
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
                      'About Pearling Path Visitors Centre',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'The main Visitor Centre of the Pearling Path is located in the heart of Muharraq amid the historic ‘Ammarat of the traditional market. Designed by Valerio Olgiati architects, the project entitled Pearling Site incorporates the ruins of ‘Ammarat Yousif Ali Fakhro, a historic ‘Ammarat structure built in the 1930s that had fallen into decay due to the lack of use since the 1960s, as well as the ‘Ammarat Al Doy and its later extension.',
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
                  'Pearling Path Visitors Centre, Muharraq, Bahrain',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Pearling+Path+Visitor+and+Experience+Center/@26.2455696,50.6062934,16z/data=!4m10!1m2!2m1!1sPearling+Path+Visitors+Centre!3m6!1s0x3e49a7f3d25539d1:0x33c599e6776beaa0!8m2!3d26.2497413!4d50.6088474!15sCh1QZWFybGluZyBQYXRoIFZpc2l0b3JzIENlbnRyZZIBBm11c2V1beABAA!16s%2Fm%2F0k2lgwm?hl=en-US';
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
