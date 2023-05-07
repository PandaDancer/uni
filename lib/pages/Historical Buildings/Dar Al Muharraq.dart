
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Dar extends StatelessWidget {
  const Dar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Dar Al Muharraq'),
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
                'Area: Muharraq',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\nnot available',
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
                      'About Dar Al Muharraq',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'Situated in the old city of Muharraq along the Pearling, testimony of an Island Economy pathway , Dar Almuharraq is a  training and research centre for traditional folk music and has a space for cultural and musical events.  An extension to Dal Jinaa, the three- storey building enveloped with a steel mesh, which also acts as a cooling device shading the building from direct sunlight. The mesh can be lifted on the ground floor, opening it up directly to the street and reinforcing its role as an open majlis to the city.',                      style: TextStyle(fontSize: 20, color: Colors.grey[600]),
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
                  'Building 2386, Road 4024, Block 240, Muharraq 224, Bahrain.',
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Dar+Al+Muharraq/@26.2449641,50.6115909,17z/data=!4m16!1m9!3m8!1s0x3e49a8a101868ba3:0x96b70e7c8424e109!2sDar+Al+Muharraq!8m2!3d26.2449641!4d50.6141658!9m1!1b1!16s%2Fg%2F11dx9h76kr!3m5!1s0x3e49a8a101868ba3:0x96b70e7c8424e109!8m2!3d26.2449641!4d50.6141658!16s%2Fg%2F11dx9h76kr';
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
