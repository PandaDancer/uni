
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class BaniJamra extends StatelessWidget {
  const BaniJamra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Bani Jamra Weaving Textiles Factory'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Archeology & Heritage, Culture & Art',
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
                'Area: Bani Jamra',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\n8:00 am – 1:00 pm,\n4:00 pm – 6:00 pm\n(Closed on Fridays)',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
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
                      'About Bani Jamra Weaving Textiles Factory',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'Architecturally, this factory is influenced by its location as Leopard Banchini drew inspiration from the memory of the palm tree materials (Barasti) once used for construction. It provides a shaded space within to incubate weaving and spinning works, and the factory includes units for weaving using authentic traditional methods, as well as workshops teaching this craft and a shop for products.',
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

                  'Bani Jamra Weaving Textiles Factory, Bani Jamra, Bahrain',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),


                onTap: () async {
                  final url = 'https://www.google.com/maps/place/%D9%85%D8%B5%D9%86%D8%B9+%D8%A8%D9%86%D9%8A+%D8%AC%D9%85%D8%B1%D8%A9+%D9%84%D9%84%D9%86%D8%B3%D9%8A%D8%AC%E2%80%AD/@26.213128,50.4577643,17z/data=!3m1!4b1!4m6!3m5!1s0x3e49ba68c12d5aa1:0xd1602caf91a9e01e!8m2!3d26.213128!4d50.4603392!16s%2Fg%2F11b5pjbfrr?hl=en-US';
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
