import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('ar', ''), // Arabic, no country code
        const Locale('fr', ''),
        const Locale('pt_BR', ''),
      ],
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
        onTap: onTabTapped,
        showUnselectedLabels: true, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icon/12.png"),
              height: 20,
            ),
            title: Text(
              'حسابي',
              style: TextStyle(color: Colors.black),
            ),
          ),
          new BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icon/11.png"),
              height: 20,
            ),
            title: Text('لوحة البيانات', style: TextStyle(color: Colors.black)),
          ),
          new BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/icon/10.png"),
                height: 20,
              ),
              title: Text(
                'المحفظة الرقمية',
                style: TextStyle(color: Colors.black, fontSize: 12),
              )),
          new BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/icon/9.png"),
                height: 20,
              ),
              title: Text('الخدمات', style: TextStyle(color: Colors.black))),
          new BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icon/8.png"),
              height: 20,
            ),
            title: Text('الرئيسية', style: TextStyle(color: Colors.black)),
          )
        ],
      ),
    );
  }
}
