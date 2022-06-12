

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp( MyApp());
// }

// // bundling images
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Center(
//             child: Container(
//               height: 250,
//               width: 250,
//               decoration: BoxDecoration(
//                 image: const DecorationImage(
//                   image: AssetImage('images/bulb.jpg'),
//                 ),
//                 border: Border.all(
//                   color: Colors.orange,
//                   width: 10,
//                 ),
//                 borderRadius: BorderRadius.circular(150),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// Row widget
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             verticalDirection: VerticalDirection.down,
//               // mainAxisAlignment: MainAxisAlignment.center,
//               // mainAxisSize: MainAxisSize.max,
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Starting of  App',
//                   style: TextStyle(
//                     fontSize: 20,
//                     backgroundColor: Colors.blue,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Container(
//                   color: Colors.orange,
//                   child: const Center(
//                     child: Text(
//                       'my App',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       ),
//                     ),
//                   ),
//                   // height: 150,
//                   // width: 150,
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//                 ),
//                 const Text(
//                   'Ending of App',
//                   style: TextStyle(
//                     fontSize: 20,
//                     backgroundColor: Colors.blue,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )
//               ]),
//         ),
//       ),
//     );
//   }
// }


// // //Coloumn widget
// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: SafeArea(
// //           child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               mainAxisSize: MainAxisSize.max,
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 const Text(
// //                   'Starting of  App',
// //                   style: TextStyle(
// //                     fontSize: 20,
// //                     backgroundColor: Colors.blue,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 Container(
// //                   color: Colors.orange,
// //                   child: const Center(
// //                     child: Text(
// //                       'my App',
// //                       style: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 25,
// //                       ),
// //                     ),
// //                   ),
// //                   height: 150,
// //                   width: 150,
// //                   padding:
// //                       const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
// //                 ),
// //                 const Text(
// //                   'Ending of App',
// //                   style: TextStyle(
// //                     fontSize: 20,
// //                     backgroundColor: Colors.blue,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 )
// //               ]),
// //         ),
// //       ),
// //     );
// //   }
// // }

//     // return MaterialApp(
//     //   home: Scaffold(
//     //     backgroundColor: Colors.yellow,
//     //     appBar: AppBar(
//     //       backgroundColor: Colors.deepOrange,
//     //       title: const Text('Mobile APP'),
//     //     ),
//     //     body: const Center(
//     //       child: Image(
//     //         image: AssetImage(
//     //           'images/bulb.jpg',
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // );

// Exercise 2

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Container(
//             color: Colors.black,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,

//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       color: Colors.yellow,
//                       height: 195,
//                       width: 200,
//                     ),
//                     Container(
//                       color: Colors.lightBlue,
//                       height: 195,
//                       width: 200,
//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       // color: Colors.black,

//                       height: 250,
//                       width: 250,

//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         image: const DecorationImage(
//                           image: AssetImage('images/bulb.jpg'),
//                           fit: BoxFit.fill,
//                         ),
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 5,
//                         ),
//                         borderRadius: BorderRadius.circular(150),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.white.withOpacity(0.5),
//                             blurRadius: 15,
//                             spreadRadius: 15,
//                           ),
//                         ],
//                       ),

//                     )
//                   ],
//                 ),
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   // crossAxisAlignment: CrossAxisAlignment.stretch,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       color: Colors.purple,
//                      height: 195,
//                       width: 200,
//                     ),
//                     Container(
//                       color: Colors.lightGreen,
//                      height: 195,
//                       width: 200,
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Exercise -03

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Container(
//             color: Colors.yellow[200],
//             child: Center(
//               child: Container(
//                 height: 400,
//                 width: 400,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 30,
//                       offset: Offset(0, 20),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       height: 100,
//                       width: 100,
//                       margin: const EdgeInsets.symmetric(vertical: 20),
//                       decoration: BoxDecoration(
//                           image: const DecorationImage(
//                             image: AssetImage('images/ap.jpg'),
//                           ),
//                           border: Border.all(
//                             color: Colors.white,
//                           ),
//                           borderRadius: BorderRadius.circular(150),
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Colors.lightBlue,
//                               blurRadius: 10,
//                               spreadRadius: 3,
//                             ),
//                           ]),
//                     ),
//                     const Text(
//                       'Amit Pokhrel',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                     const Text(
//                       'Flutter Developer',
//                       style: TextStyle(
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     Container(
//                       height: 2,
//                       width: 100,
//                       color: Colors.yellow,
//                       margin: const EdgeInsets.symmetric(vertical: 20),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.only(right: 350),
//                       child: const FaIcon(
//                         FontAwesomeIcons.quoteLeft,
//                         color: Colors.yellow,
//                         size: 50,
//                       ),
//                     ),
//                     const Text(
//                       'Non minim amet ut fugiat laborum amet dolor. Deserunt qui reprehenderit ullamco sintconsectetur sunt irure officia labore enim nulla ea. Tempor minim proident cupidatat voluptate laboris anim eiusmod occaecat non quis culpa nostrud. ',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontFamily: 'DancingScript',
//                         // fontWeight: FontWeight.w500,
//                         color: Colors.blue,
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.only(left: 350),
//                       child: const FaIcon(
//                         FontAwesomeIcons.quoteRight,
//                         color: Colors.yellow,
//                         size: 50,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// const Padding(
//   padding: EdgeInsets.only(left: 20),
//   child: FaIcon(
//     FontAwesomeIcons.quoteLeft,
//     color: Colors.yellow,
//   ),
// ),

// import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.blue,
//                 margin: const EdgeInsets.only(left: 30),
//                 child: const Text(
//                   'Hello World',
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontFamily: 'Trajan Pro',
                    
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }