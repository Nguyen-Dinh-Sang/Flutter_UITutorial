import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/DrawerMenu.dart';

class DashboardUI extends StatefulWidget {
  @override
  _DashboardUIState createState() => _DashboardUIState();
}

class _DashboardUIState extends State<DashboardUI> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
      fontFamily: 'Montserrat Regular',
      fontSize: 14.0,
      color: Color.fromRGBO(63, 63, 63, 1),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/top_header.png'))),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/41266102?v=4'),
                      ),
                      // tạo một khoảng trống
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // canh bắt đầu từ start
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Nguyen Dinh Sang',
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium',
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          Text(
                            '3117410210',
                            style: TextStyle(
                                fontFamily: 'Montserrat Regular',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    primary: false,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904425.svg',
                              height: 128,
                            ),
                            Text(
                              'Personal Data',
                              style: cardTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904565.svg',
                              height: 128,
                            ),
                            Text(
                              'Course Schedule',
                              style: cardTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904527.svg',
                              height: 128,
                            ),
                            Text(
                              'Attendance Recap',
                              style: cardTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904437.svg',
                              height: 128,
                            ),
                            Text(
                              'Study Result',
                              style: cardTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                              height: 128,
                            ),
                            Text(
                              'Course Booking',
                              style: cardTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/1904/1904221.svg',
                              height: 128,
                            ),
                            Text(
                              'Course Plan',
                              style: cardTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
