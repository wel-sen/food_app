// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bauhaus Bugler',
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Annie Bryant',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, right: 10),
                transform: Matrix4.rotationZ(100),
                child: Stack(children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(width: 30),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/avatar.png'),
                      width: 45,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
