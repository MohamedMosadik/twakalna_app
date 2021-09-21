import 'package:flutter/material.dart';
import 'package:twakalna_app/placeholder.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List _children = [
    HomePage(),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.black),
    PlaceholderWidget(Colors.yellow)
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text('Home'),
              backgroundColor: Colors.black),
          new BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            title: Text('Services'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              title: Text('digital wallet')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), title: Text('Dashboard')),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          )
        ],
      ),
    );
  }
}
