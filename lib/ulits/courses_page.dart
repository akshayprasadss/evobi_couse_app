


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class YourCourses extends StatelessWidget {
  const YourCourses({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 490,
          width: 320,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0x80EFF5FB),
                Color(0x80FFFFFF),
              ],
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Text(
                      'RECENT\nCOURSES -',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 16, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 35,
                      width: 120,
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'VIEW  MORE',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.add,
                            size: 19,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(children: [
                Container(
                  height: 150,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 150,
                  width: 280,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color.fromARGB(255, 179, 174, 174),
                        Color.fromARGB(226, 255, 255, 255),
                        // 0x80 is the alpha value for 50% opacity
                        Color.fromARGB(208, 160, 154, 154)
                        // 0x80 is the alpha value for 50% opacity
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
                        child: Text(
                          'VLSI\nDesign 1',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Milestone',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '3',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text('/124')
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Challange',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '3',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text('/124')
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  'Stage',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '3',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text('/124')
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade700,
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 280,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(208, 174, 205, 229),
                          const Color.fromARGB(218, 255, 255, 255),
                          // 0x80 is the alpha value for 50% opacity
                          Color.fromARGB(208, 137, 182, 216)
                          // 0x80 is the alpha value for 50% opacity
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
                          child: Text(
                            'VLSI\nDesign 1',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    'Milestone',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        '3',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Text('/124')
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    'Challange',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        '3',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Text('/124')
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text(
                                    'Stage',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text(
                                        '3',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Text('/124')
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}