
import 'package:evobii_akshay/processing_page.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({Key? key,}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String? _fileName;
  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _pickFile(String fileType) async {
  FilePickerResult? result;

  switch (fileType) {
    case 'PowerPoint':
      result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['ppt', 'pptx'],
      );
      break;
    case 'Excel':
      result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['xls', 'xlsx'],
      );
      break;
    case 'PDF':
      result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
      break;
  }

  print('FilePickerResult: $result');

  if (result != null && result.files.isNotEmpty) {
    String fileName = result.files.single.name;

    print('Selected file name: $fileName');

    setState(() {
      _fileName = fileName;
    });

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => result != null && result.files.isNotEmpty
        ? ProcessingPage(
            filePath: result.files.single.path!,
            fileType: fileType,
            fileName: result.files.single.name, // Pass fileName
          )
        : Scaffold(body: Center(child: Text('No file selected'))),
  ),
);
  } else {
    setState(() {
      _fileName = null;
    });
  }
}


  Widget _buildFileTypeIcon(String fileType, IconData icon) {
    return GestureDetector(
      onTap: () {
        _toggleMenu();
        _pickFile(fileType);
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.blue,
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Building SecondPage');
    print('File name: $_fileName');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: CircleAvatar(
                  radius: 14,
                  child: Icon(Icons.arrow_back_sharp),
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(190, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'PeeCee\nCompute Kit 1',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Divider(
                color: Color.fromARGB(255, 97, 97, 97),
                thickness: 1,
              ),
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Challenges'),
                  Tab(text: 'Quick Test'),
                ],
                labelColor: Colors.black,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(child: Text('Challenges Content')),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        if (_isMenuOpen) ...[
                          Positioned(
                            bottom: 400,
                            child: _buildFileTypeIcon('PowerPoint', Icons.slideshow,),
                          ),
                          Positioned(
                            bottom: 340,
                            left: 60,
                            child: _buildFileTypeIcon('Excel', Icons.table_chart),
                          ),
                          Positioned(
                            bottom: 340,
                            right: 60,
                            child: _buildFileTypeIcon('PDF', Icons.picture_as_pdf),
                          ),
                        ],
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: _toggleMenu,
                              child: Icon(_isMenuOpen ? Icons.close : Icons.add),
                            ),
                            SizedBox(height: 20),
                            if (_fileName != null)
                              Text(
                                'Selected file: $_fileName',
                                style: TextStyle(fontSize: 16, color: Colors.green),
                              )
                            else
                              Text(
                                'No file selected',
                                style: TextStyle(fontSize: 16, color: Colors.red),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
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
