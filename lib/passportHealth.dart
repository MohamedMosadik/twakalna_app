import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PassportHealth extends StatefulWidget {
  @override
  _PassportHealthState createState() => _PassportHealthState();
}

class _PassportHealthState extends State<PassportHealth> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat('EEE d MMM kk:mm').format(now);
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   Icon(Icons.arrow_forward_ios),
        // ],

        title: Text('الجواز الصحي'),
        centerTitle: true,
        backgroundColor: Color(0xE175A7A0),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF1B1464),
                      Color(0xE1006837),
                    ],
                  )),
              height: 150,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/image/person.jpeg'),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        foregroundColor: Colors.teal,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.translate),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 20,
                        foregroundColor: Colors.teal,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.category),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              left: 20,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 390,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Colors.teal),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Download Health Passport',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.picture_as_pdf_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 150,
                left: 20,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      color: Colors.white,
                    ),
                    // color: Colors.black,
                    // height: 200,
                    width: 390,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            " آخر تحديث : $formatter",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            maxLines: 3,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Personal Information',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        RowTextData('Nationality', 'Egypt'),
                        SizedBox(
                          height: 10,
                        ),
                        RowTextData('ID NO.', '23859458739453'),
                        SizedBox(
                          height: 10,
                        ),
                        RowTextData('Passport No.', 'Asjd345'),
                        SizedBox(
                          height: 10,
                        ),
                        RowTextData('Blood Type', 'AB+'),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Health Information',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'COVID-19 vaccine details ',
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 12),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RowTextData('Frist Dose', 'Oxford/AstraZeneca'),
                        Padding(
                          padding: EdgeInsets.only(left: 290),
                          child: Text('2021-03-16',
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Image(
                          image: AssetImage('assets/icon/13.png'),
                          height: 25,
                          width: 25,
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            'NO COVID-19 PCR test result have been found ',
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Travel Medical Insurance',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Image(
                          image: AssetImage('assets/icon/14.png'),
                          height: 25,
                          width: 25,
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            'Your immunization health status don not required traval medical insurance',
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Container(
                        //   height: 20,
                        //   color: Colors.black,
                        // )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget RowTextData(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
