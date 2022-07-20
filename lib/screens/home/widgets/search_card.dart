import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tempflut/screens/search/search_page.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      margin: EdgeInsets.all(25),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage('assets/images/search_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fast Search',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'You can search quickly for the job\nyou want.',
            // textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.4,
              color: Colors.white,
              fontFamily: 'Bauhaus Bugler',
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/icons/search.png'),
                    width: 20,
                    color: Colors.grey[300],
                  ),
                  SizedBox(width: 7),
                  Text(
                    'Search your job',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//tag_list
/*

class Taglist extends StateFulWidget{
  State<TagList> createState() => _TagList();
}

class _TagList extends State<TagList>{
  final tagList = <String>['All','Popular','Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.
      child:ListView.separated(
        scroll:horizontal

        itemBuilder:(context, index) => GestureDetector(
          onTap:() {
            setState(() {
              selected = index;
            })
          }
          child:Container(
            padding: EdgeInsets,
            margin: EdgeInsets,
            decoration: BoxDecoration(
              color: selected == index ? Theme.of(context).primaryColor.withOpacity(0.2) 
              : Colors.white,
              borderRadius: BorderRadius.circular(30),
              border:Border.all(
                color: selected == index ? Theme.of(context).primaryColor : 
                Theme.of(context).primaryColor.withOpacity(0.2),
              )
            )
            child:Text(tagsList[index],
          )
        )
        separatorBuilder:(_,index) => SizedBox(),
        itemCount:tagsList.length,
      )
    );
  }
}

*/