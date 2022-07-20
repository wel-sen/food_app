import 'package:flutter/material.dart';
import 'package:tempflut/screens/home/home.dart';
import 'package:tempflut/screens/search/search_page.dart';

// void main() => runApp(
//       MaterialApp(
//         home: HomePage(),
//       ),
//     );

void main() => runApp(
      Home(),
    );

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Job Finder App',
        theme: ThemeData(
          primaryColor: Colors.teal,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/search': (context) => SearchPage(),
        }
        // home:HomePage(),
        );
  }
}
