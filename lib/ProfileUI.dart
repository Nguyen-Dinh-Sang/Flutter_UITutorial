import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            // fit
            overflow: Overflow.visible,
            // vị trí của các view
            alignment: Alignment.center,
            children: <Widget>[
              Image(
                width: double.infinity,
                // lấy chiều cao bằng màn hình thiết bị.
                // height: MediaQuery.of(context).size.height/3,
                // fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1565073182887-6bcefbe225b1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHw%3D&w=1000&q=80'),
              ),
              Positioned(
                //vị trí so với view khác
                bottom: -50.0,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/41266102?v=4'),
                ),
              ),
            ],
          ),
          // tạo khoảng trống
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Center(
              child: Text(
                'Nguyen Dinh Sang',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
            ),
            subtitle: Center(
              child: Text('Native Android & Flutter Developer'),
            ),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.mail),
            label: Text(
              'Hire me',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          ListTile(
            title: Text('About Me'),
            subtitle: Text(
                "I used to be a freelancer, haven't really done a professional project yet, so I wanted to step into the corporate environment to challenge myself. Find an environment in which to learn, dedicate and use my talents to become an outstanding employee."),
          ),
        ],
      ),
    );
  }
}
