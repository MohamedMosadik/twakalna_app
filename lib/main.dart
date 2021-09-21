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
  int _currentIndex = 4;
  final List _children = [
    PlaceholderWidget(),
    PlaceholderWidget(),
    PlaceholderWidget(),
    PlaceholderWidget(),
    HomePage()
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
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            title: Text(
              'حسابي',
              style: TextStyle(color: Colors.black),
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_outlined,
              color: Colors.black,
            ),
            title: Text('لوحة البيانات', style: TextStyle(color: Colors.black)),
          ),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.black,
              ),
              title: Text('المحفظة الرقمية',
                  style: TextStyle(color: Colors.black))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
                color: Colors.black,
              ),
              title: Text('الخدمات', style: TextStyle(color: Colors.black))),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            title: Text('الرئيسية', style: TextStyle(color: Colors.black)),
          )
        ],
      ),
    );
  }
}
