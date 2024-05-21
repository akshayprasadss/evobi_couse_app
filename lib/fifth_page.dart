import 'package:evobii_akshay/sixth_page.dart';
import 'package:flutter/material.dart';
import 'package:evobii_akshay/eighth_page.dart';

final datasques = [
  {'no': 1, 'qndes': 'Question Description', 'qn': 'Infinity'},
];

final datasans = [
  {'no': 1, 'ans': 'Infinity'},
  {'no': 20, 'ans': 'probably none'},
  {'no': 4, 'ans': 'many but countable'},
  {'no': 10, 'ans': 'none of them above but not one'},
];

class fifthpage extends StatefulWidget {
  const fifthpage({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<fifthpage> {
  int? selectedAnswerNo;

  Widget buildDataRow(int no, String qndes, String ans, {bool isQuestion = false}) {
    return GestureDetector(
      onTap: !isQuestion
          ? () {
              setState(() {
                selectedAnswerNo = no;
              });
            }
          : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isQuestion)
            Container(
              height: 30,
              width: 30,
              child: Checkbox(
                value: selectedAnswerNo == no,
                onChanged: (bool? value) {
                  setState(() {
                    if (value == true) {
                      selectedAnswerNo = no;
                    } else {
                      selectedAnswerNo = null;
                    }
                  });
                },
                checkColor: Colors.green,
                activeColor: Colors.white,
              ),
            ),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              isQuestion ? '$qndes\n$ans' : '$ans',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  void _goToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SixthPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(153, 226, 220, 220),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        // Display the question
                        buildDataRow(
                          datasques[0]['no'] as int,
                          datasques[0]['qndes'].toString(),
                          datasques[0]['qn'].toString(),
                          isQuestion: true,
                        ),
                        Divider(),
                        // Display the answers
                        for (var data in datasans)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: buildDataRow(
                              data['no'] as int,
                              '',
                              data['ans'].toString(),
                            ),
                          ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(153, 226, 220, 220),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(153, 226, 220, 220),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: GestureDetector(
                  onTap: selectedAnswerNo != null ? _goToNextPage : null,
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: selectedAnswerNo != null
                          ? Color.fromARGB(255, 81, 137, 250)
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Publish',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: fifthpage(),
  ));
}
