
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class Ain extends StatelessWidget {
  const Ain ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Ain Umm Al Sujur Archaeological Site'),
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
                'Area: North of Diraz Village, Off Budayai Highway',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Timing:\nDaily, 6:00am to 1:00pm (Currently Closed) ',
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
                      'About Ain Umm Al Sujur Archaeological Site',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.justify,
                        'Ain Umm al-Sujur is located on the northeastern side of Diraz village and is famous for having Bahrain most productive artesian water spring in the past. Its name means "The springs of overflowing waters".'  ,
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
                  'Ain Umm Al Sujur, Avenue 36, Barbar, Bahrain',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),

                onTap: () async {
                  final url = 'https://www.google.com/maps/place/Ain+Umm+Al+Sujur/@26.2216301,50.4604141,16z/data=!4m10!1m2!2m1!1sAin+Umm+Al+Sujur+Archaeological+Site!3m6!1s0x3e49bb87cc40415d:0x9708ed2a2dff1088!8m2!3d26.2216301!4d50.4699413!15sCiRBaW4gVW1tIEFsIFN1anVyIEFyY2hhZW9sb2dpY2FsIFNpdGWSARNoaXN0b3JpY2FsX2xhbmRtYXJr4AEA!16s%2Fg%2F11pv3093h_?hl=en-US';
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
