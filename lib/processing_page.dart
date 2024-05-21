import 'package:evobii_akshay/fifth_page.dart';
import 'package:evobii_akshay/sixth_page.dart';

import 'package:flutter/material.dart';

class ProcessingPage extends StatelessWidget {
  final String filePath;
  final String fileType;
  final String fileName; // Add fileName property

  const ProcessingPage({
    required this.filePath,
    required this.fileType,
    required this.fileName, // Receive fileName
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delayed routing to the display page
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => fifthpage(),
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Quick Test', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
            SizedBox(height: 5),
            Text(
              'Physics - Gravity',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200, color: Colors.blueAccent),
            ),
            Divider(),
            Expanded(
              child: Center(
                child: Image(image: AssetImage('assets/processing.png')),
              ),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(), // Loading bar
            SizedBox(height: 20),
            Text('Selected file: $fileName'), // Display selected file name
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 40),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 40),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, size: 40),
            label: 'Events',
          ),
        ],
      ),
    );
  }
}

