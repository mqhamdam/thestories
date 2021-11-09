import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:thestories/data/dummy_data.dart';
import 'package:thestories/presentation/custom_widgets/custom_back_button.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        title: Text(
          "Achievements",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text("Bronze"),
            children: [
              Wrap(
                children: [
                  for (var i = 0; i < 10; i++)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          child: Image.network(
                            avatar_url_template,
                            height: 100,
                          ),
                        ),
                        Text("Achivement name")
                      ],
                    ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
// GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 3, childAspectRatio: 3 / 4),
//                   itemBuilder: (context, index) {
//                     return Container(
//                       color: Colors.black,
//                     );
//                   },
//                   itemCount: 9,
//                 ),

//  CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             pinned: true,
//             leading: CustomBackButton(),
//             title: Text(
//               "Achievements",
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//           SliverPadding(
//             padding: const EdgeInsets.all(0.0),
//             sliver: SliverStickyHeader.builder(
//               builder: (context, sticky) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Card(
//                         color: Colors.black,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             "My Achievements",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                     ],
//                   ),
//                 );
//               },
//               sliver: SliverGrid(
//                 delegate: SliverChildBuilderDelegate((context, index) {
//                   return Column(
//                     children: [
//                       Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: Container(
//                             height: 70,
//                             child: Placeholder(),
//                           ),
//                         ),
//                       ),
//                       Text("Achievement Title"),
//                     ],
//                   );
//                 }, childCount: 119),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   childAspectRatio: 4 / 4,
//                   mainAxisSpacing: 1,
//                   crossAxisSpacing: 1,
//                 ),
//               ),
//             ),
//           ),
//           SliverStickyHeader.builder(
//             builder: (context, sticky) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Card(
//                       color: Colors.brown[300],
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Bronze",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                   ],
//                 ),
//               );
//             },
//             sliver: SliverGrid(
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 return Column(
//                   children: [
//                     Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Container(
//                           height: 70,
//                           child: Placeholder(),
//                         ),
//                       ),
//                     ),
//                     Text("Achievement Title"),
//                   ],
//                 );
//               }, childCount: 119),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 4 / 4,
//                 mainAxisSpacing: 1,
//                 crossAxisSpacing: 1,
//               ),
//             ),
//           ),
//           SliverStickyHeader.builder(
//             builder: (context, sticky) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Card(
//                       color: Colors.blueGrey,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Sliver",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                   ],
//                 ),
//               );
//             },
//             sliver: SliverGrid(
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 return Column(
//                   children: [
//                     Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Container(
//                           height: 70,
//                           child: Placeholder(),
//                         ),
//                       ),
//                     ),
//                     Text("Achievement Title"),
//                   ],
//                 );
//               }, childCount: 119),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 4 / 4,
//                 mainAxisSpacing: 1,
//                 crossAxisSpacing: 1,
//               ),
//             ),
//           ),
//           SliverStickyHeader.builder(
//             builder: (context, sticky) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Card(
//                       color: Colors.amber[900],
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Gold",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                   ],
//                 ),
//               );
//             },
//             sliver: SliverGrid(
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 return Column(
//                   children: [
//                     Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Container(
//                           height: 70,
//                           child: Placeholder(),
//                         ),
//                       ),
//                     ),
//                     Text("Achievement Title"),
//                   ],
//                 );
//               }, childCount: 119),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 4 / 4,
//                 mainAxisSpacing: 1,
//                 crossAxisSpacing: 1,
//               ),
//             ),
//           ),
//           SliverStickyHeader.builder(
//             builder: (context, sticky) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Card(
//                       color: Colors.indigo,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Awards",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                   ],
//                 ),
//               );
//             },
//             sliver: SliverGrid(
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 return Column(
//                   children: [
//                     Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Container(
//                           height: 70,
//                           child: Placeholder(),
//                         ),
//                       ),
//                     ),
//                     Text("Achievement Title"),
//                   ],
//                 );
//               }, childCount: 119),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 4 / 4,
//                 mainAxisSpacing: 1,
//                 crossAxisSpacing: 1,
//               ),
//             ),
//           ),
//           SliverStickyHeader.builder(
//             builder: (context, sticky) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Card(
//                       color: Colors.black,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           "Special",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                   ],
//                 ),
//               );
//             },
//             sliver: SliverGrid(
//               delegate: SliverChildBuilderDelegate((context, index) {
//                 return Column(
//                   children: [
//                     Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(15.0),
//                         child: Container(
//                           height: 70,
//                           child: Placeholder(),
//                         ),
//                       ),
//                     ),
//                     Text("Achievement Title"),
//                   ],
//                 );
//               }, childCount: 119),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 4 / 4,
//                 mainAxisSpacing: 1,
//                 crossAxisSpacing: 1,
//               ),
//             ),
//           ),
//         ],
//       ),