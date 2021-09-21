import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:twakalna_app/serviceModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String formattedDate =
      DateFormat('EEE, M/d/y – kk:mm').format((DateTime.now()));

  List<ServiceModel> model = [
    ServiceModel("التبرع بالأعضاء", 'assets/icon/1.png'),
    ServiceModel("جواز الصحي", 'assets/icon/2.png'),
    ServiceModel("لقاح كرورنا", 'assets/icon/3.png'),
    ServiceModel("تعريف رقم الجوال", 'assets/icon/4.png'),
    ServiceModel("بطاقة الوضع الصحي", 'assets/icon/5.png'),
    ServiceModel("فحص كرورنا", 'assets/icon/6.png'),
    ServiceModel("باركود زيارة تجمع", 'assets/icon/7.png'),
  ];

  @override
  Widget build(BuildContext context) {
    String lastUpdate = formattedDate;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
              Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: Color(0xFF054921),
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            formattedDate = lastUpdate;
                          });
                        },
                        child: Icon(
                          Icons.refresh,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('محصن',
                              // textDirection: TextDirection.RTL,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 120,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'أكمل جرعات لقاح كورونا (كوفيد 19)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$lastUpdate : اخر تحديث  ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            maxLines: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage('assets/image/barcode.jpeg'),
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              service(context, 10)
            ],
          ),
        ),
      ),
    );
  }

  Widget service(BuildContext context, int position) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 15,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "عرض الكل",
                      style: TextStyle(
                        fontSize: 11,
                        color: const Color(0xff6d6d6d),
                        letterSpacing: 0.132,
                        fontWeight: FontWeight.w600,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Text(
                'الخدمات الحديثة',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xE175A7A0),
                  letterSpacing: 0.192,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        SizedBox(
            height: 190,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                reverse: true,
                itemCount: model.length,
                itemBuilder: (context, position) {
                  int pos = position;
                  return Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: mostPopularCateg(
                        context: context,
                        onPress: () {},
                        position: pos,
                        name: model[position].name,
                        icon: model[position].image,
                      ));
                },
              ),
            )),
      ],
    );
  }

  Widget mostPopularCateg({
    String id,
    Function onPress,
    int position,
    String icon,
    String name,
    BuildContext context,
  }) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          color: Colors.white,
        ),
        // color: Colors.black,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 75,
                child: Image.asset(icon),
              ),
              Text(
                name,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ]),
      ),
    );
  }
}
