import 'package:evobii_akshay/second_page.dart';
import 'package:flutter/material.dart';
import 'package:evobii_akshay/ulits/courses_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(190, 0, 0, 0),
                ),
                SizedBox(
                  width: 290,
                ),
                Icon(
                  Icons.notifications,
                  size: 40,
                ),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color.fromARGB(153, 226, 220, 220),
                  ),
                  height: 80,
                  width: 365,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        child: Text(
                          'SEARCH',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondPage()),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(153, 226, 220, 220),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            'Start\nPlicker\nTest',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(153, 226, 220, 220),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                            child: Text('Score', style: TextStyle(fontSize: 25)),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 400,
                width: 380,
                decoration: BoxDecoration(
                  color: Color.fromARGB(153, 226, 220, 220),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: YourCourses(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
        ],
      ),
    );
  }
}
