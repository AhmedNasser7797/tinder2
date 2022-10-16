// import 'package:flutter/material.dart';
// import 'package:flutter_tinder_swipe/flutter_tinder_swipe.dart';
//
// import '../theme/colors.dart';
//
// class TestTTt extends StatefulWidget {
//   const TestTTt({Key? key}) : super(key: key);
//
//   @override
//   State<TestTTt> createState() => _TestTTtState();
// }
//
// class _TestTTtState extends State<TestTTt> {
//   CardController controller = CardController();
//   List<dynamic> imageItems = [
//     {
//       "image": "assets/img1.jpg",
//     },
//     {
//       "image": "assets/image2.jpg",
//     },
//     {
//       "image": "assets/imgg.jpg",
//     },
//     {
//       "image": "assets/img4.jpg",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: new Scaffold(
//         body: Center(
//           child: _showPrefListData(size, controller),
//         ),
//       ),
//     );
//   }
//
//   _showPrefListData(Size size, CardController cardController) {
//     return Column(
//       children: [
//         Center(
//           child: Container(
//             margin: const EdgeInsets.only(top: 50),
//             height: size.height * 0.6,
//             child: new SwipeCard(
//               swipeEdgeVertical: 8.0,
//               animDuration: 500,
//               totalNum: 3,
//               stackNum: 3,
//               swipeEdge: 2.0,
//               allowVerticalMovement: false,
//               maxWidth: MediaQuery.of(context).size.width * 1,
//               minWidth: MediaQuery.of(context).size.width * 0.8,
//               minHeight: MediaQuery.of(context).size.width + 120 * 0.88,
//               maxHeight: MediaQuery.of(context).size.width + 120 * 0.99,
//               cardBuilder: (context, index) => Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                           color: grey.withOpacity(0.3),
//                           blurRadius: 5,
//                           spreadRadius: 2),
//                     ]),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Stack(
//                     children: [
//                       Container(
//                         width: size.width,
//                         height: size.height,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(itemsTemp[index]['img']),
//                               fit: BoxFit.cover),
//                         ),
//                       ),
//                       Container(
//                         width: size.width,
//                         height: size.height,
//                         decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                                 colors: [
//                               black.withOpacity(0.25),
//                               black.withOpacity(0),
//                             ],
//                                 end: Alignment.topCenter,
//                                 begin: Alignment.bottomCenter)),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(15),
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     width: size.width * 0.72,
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text(
//                                               itemsTemp[index]['name'],
//                                               style: TextStyle(
//                                                   color: white,
//                                                   fontSize: 24,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             SizedBox(
//                                               width: 10,
//                                             ),
//                                             Text(
//                                               itemsTemp[index]['age'],
//                                               style: TextStyle(
//                                                 color: white,
//                                                 fontSize: 22,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Row(
//                                           children: [
//                                             Container(
//                                               width: 10,
//                                               height: 10,
//                                               decoration: BoxDecoration(
//                                                   color: green,
//                                                   shape: BoxShape.circle),
//                                             ),
//                                             SizedBox(
//                                               width: 10,
//                                             ),
//                                             Text(
//                                               "Recently Active",
//                                               style: TextStyle(
//                                                 color: white,
//                                                 fontSize: 16,
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Row(
//                                           children: List.generate(
//                                               itemsTemp[index]['likes'].length,
//                                               (indexLikes) {
//                                             if (indexLikes == 0) {
//                                               return Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     right: 8),
//                                                 child: Container(
//                                                   decoration: BoxDecoration(
//                                                       border: Border.all(
//                                                           color: white,
//                                                           width: 2),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               30),
//                                                       color: white
//                                                           .withOpacity(0.4)),
//                                                   child: Padding(
//                                                     padding:
//                                                         const EdgeInsets.only(
//                                                             top: 3,
//                                                             bottom: 3,
//                                                             left: 10,
//                                                             right: 10),
//                                                     child: Text(
//                                                       itemsTemp[index]['likes']
//                                                           [indexLikes],
//                                                       style: TextStyle(
//                                                           color: white),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               );
//                                             }
//                                             return Padding(
//                                               padding: const EdgeInsets.only(
//                                                   right: 8),
//                                               child: Container(
//                                                 decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             30),
//                                                     color:
//                                                         white.withOpacity(0.2)),
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           top: 3,
//                                                           bottom: 3,
//                                                           left: 10,
//                                                           right: 10),
//                                                   child: Text(
//                                                     itemsTemp[index]['likes']
//                                                         [indexLikes],
//                                                     style:
//                                                         TextStyle(color: white),
//                                                   ),
//                                                 ),
//                                               ),
//                                             );
//                                           }),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: Container(
//                                       width: size.width * 0.2,
//                                       child: Center(
//                                         child: Icon(
//                                           Icons.info,
//                                           color: white,
//                                           size: 28,
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               cardController: cardController,
//               swipeUpdateCallback:
//                   (DragUpdateDetails details, Alignment align) {
//                 /// Get swiping card's alignment
//                 if (align.x < 0) {
//                   //Card is LEFT swiping
//
//                 } else if (align.x > 0) {
//                   //Card is RIGHT swiping
//
//                 }
//               },
//               swipeCompleteCallback:
//                   (CardSwipeOrientation orientation, int index) {},
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.symmetric(vertical: 20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               FloatingActionButton(
//                 elevation: 10,
//                 heroTag: null,
//                 onPressed: () {
//                   cardController.swipeLeft();
//                 },
//                 backgroundColor: Colors.white,
//                 child: Image.asset(
//                   'assets/decline.png',
//                   height: 30,
//                   width: 30,
//                 ),
//               ),
//               FloatingActionButton(
//                 elevation: 10,
//                 heroTag: null,
//                 onPressed: () {
//                   cardController.swipeRight();
//                 },
//                 backgroundColor: Colors.white,
//                 child: Image.asset(
//                   'assets/heart.png',
//                   height: 30,
//                   width: 30,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
