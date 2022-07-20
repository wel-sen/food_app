// import 'dart:html';

// import 'package:flutter/material.dart';

// void mian() => runApp(MaterialApp(
//       home: Home(),
//     ));

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ninja ID Card'),
//         centerTitle: true,
//         backgroundColor: Colors.amber[300],
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 40, 0),
//         child: Column(children: <Widget>[
//           Center(
//             child: CircleAvatar(
//               backgroundImage: AssetImage('assets/A_01.png'),
//               radius: 10,
//             ),
//           ),
//           Divider(height: 10, color: Colors.amber),
//           Text('NAME'),
//           SizedBox(height: 10),
//           Text(
//             'Chun-Li',
//             style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.amber[40],
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 30),
//           Text('CURRENT NINJA LEVEL'),
//           SizedBox(height: 10),
//           Text(
//             '8',
//             style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.amber[40],
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 30),
//           Row(children: <Widget>[
//             Icon(
//               Icons.email,
//             ),
//             SizedBox(width: 30),
//             Text('fdsd@gmail.com'),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text('SAVE'),
//               ),
//             ),
//           ])
//         ]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print('Button Pressed');
//         },
//         child: Text('+'),
//         backgroundColor: Colors.amber,
//       ),
//     );
//   }
// }


// // body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children:
// //           quotes.map((quote) => Text(quote)).toList(),
// //       ),

// // class Quote{
// //      String text;
// //      String author;
// //    Quote({required this.text, required this.author});
// // }
// /*

// import 'package:flutter.material.dart';




// */