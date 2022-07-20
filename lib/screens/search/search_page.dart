import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tempflut/screens/search/widgets/search_app_bar.dart';
import 'package:tempflut/screens/search/widgets/search_input.dart';
import 'package:tempflut/screens/search/widgets/search_list.dart';
import 'package:tempflut/screens/search/widgets/search_option.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey[200],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(),
              SearchInput(),
              SearchOption(),
              Expanded(child: SearchList()),
            ],
          ),
        ],
      ),
      //   ],
      // ),
    );
  }
}
