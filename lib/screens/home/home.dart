import 'package:flutter/material.dart';
import 'package:tempflut/screens/home/widgets/home_app_bar.dart';
import 'package:tempflut/screens/home/widgets/job_list.dart';
import 'package:tempflut/screens/home/widgets/search_card.dart';
import 'package:tempflut/screens/home/widgets/tag_list.dart';

class HomePage extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey[200],
              ),
            )
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            HomeAppBar(),
            SearchCard(),
            TagList(),
            JobList(),
          ])
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[400],
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_outlined, size: 20),
            label: 'Case',
          ),
          BottomNavigationBarItem(
            icon: Text(''),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined, size: 20),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, size: 20),
            label: 'Person',
          ),
        ],
        // currentIndex: _currentIndex,
        // onTap: (int index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
      ),
    );
  }
}
