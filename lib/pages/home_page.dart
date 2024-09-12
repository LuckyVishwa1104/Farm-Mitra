import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Icon(Icons.grid_3x3),
      appBar: AppBar(
        title: const Text('FarmMitra'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   color:  Colors.grey[100],
        // ),
        // child: Text('Hoe Page',),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Text 1',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Text 2',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Text 3',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Text 4',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(
            label: 'Rent',
            icon: Icon(
              Icons.upload,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Lease',
            icon: Icon(
              Icons.download,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
        currentIndex: cnt,
        onTap: (int index) {
            setState(() {
              cnt = index;
            });
          },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
