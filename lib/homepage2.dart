// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({Key? key}) : super(key: key);
  @override
  State<Homepage2> createState() => _HomepageState2();
}

class _HomepageState2 extends State<Homepage2> {
  bool isDrawerOpen = false;

  // Creating scaffold key, which will Track all element of scaffold
  //It can be used to uniquely identify a widget and access its state or properties
  // use of creating key is for taking the control in the user hand from the flutter
  final GlobalKey<ScaffoldState> Scaffkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffkey,
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {},
        ),
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(),
            onPressed: () {
              Scaffkey.currentState?.openEndDrawer();
            },
            child: Text('Open'),
          ),
          ElevatedButton(
            onPressed: () {
              Scaffkey.currentState?.openEndDrawer();
            },
            child: Text('Closed'),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 400),
        backgroundColor: Colors.deepPurple,
        onTap: (int index) {
          print(index);
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.blue,
          ),
          Icon(Icons.favorite),
          Icon(
            Icons.settings,
          ),
          Icon(Icons.man),
        ],
      ),
    );
  }
}
