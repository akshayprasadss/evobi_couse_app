import 'package:evobii_akshay/seventh_page.dart';
import 'package:flutter/material.dart';


class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Challenges'),
              Tab(text: 'Quick Test'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PeeCee\nCompute Kit 1',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(153, 226, 220, 220),
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GRADE 6',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Physics - Gravity',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w200,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Test Description\nLorem ipsum dolor sit amet, consetetur\nsadipscing elitr,sed diam nonumy eirmod tempor',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 20),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Add functionality for the EDIT button here
                                },
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'EDIT',
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => seventh_page()),
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 81, 137, 250),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'START',
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(330, 150, 0, 0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(153, 226, 220, 220),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          // Add functionality for the icon button here
                        },
                        icon: Icon(Icons.document_scanner_outlined, size: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SixthPage(),
  ));
}