import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.teal,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: Colors.white,
                  ),
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xFF054921),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('assets/image/my.jpg'),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Mohamed Mosadik',
                        style: TextStyle(color: Color(0xFF054921)),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '28373465',
                        style: TextStyle(color: Color(0xFF054921)),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 40,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                    color: Color(0xFF054921))),
                            Image(image: AssetImage('assets/image/logo.png'))
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
