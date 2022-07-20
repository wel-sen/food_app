import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tempflut/screens/search/search_page.dart';

import 'package:tempflut/screens/home/home.dart';

class SearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 7,
        left: 20,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              // width:10,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, right: 10),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(Icons.notifications_none_outlined,
                        size: 30, color: Colors.grey),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.more_horiz_outlined,
                color: Color.fromARGB(255, 48, 43, 43),
              ),
            ],
          )
        ],
      ),
    );
  }
}
