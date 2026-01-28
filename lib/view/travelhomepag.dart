// import 'package:calculatorapp/viewmodel/travelviewmodel.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../model/appcolor.dart';
//
// class TravelHomePage extends StatefulWidget {
//   const TravelHomePage({super.key});
//
//   @override
//   State<TravelHomePage> createState() => _TravelHomePageState();
// }
//
// class _TravelHomePageState extends State<TravelHomePage>
//     with TickerProviderStateMixin {
//   // late AnimatedBuilder animation;
//   @override
//
//   Widget build(BuildContext context) {
//     final provider = context.watch<Travelviewmodel>();
//     TabController tabController = TabController(length: 3, vsync: this);
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 children: const [
//                   Icon(Icons.menu_sharp),
//                   Spacer(),
//                   CircleAvatar(
//                     backgroundImage: AssetImage('assets/images/fruits.jpg'),
//                     radius: 25,
//                   ),
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 10),
//
//             const Padding(
//               padding: EdgeInsets.only(left: 20),
//               child: Text(
//                 'Discover Crow of Pabbi dana da dana',
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 30),
//             Container(
//               child: TabBar(
//                 // labelPadding: EdgeInsets.only(left: 20,right: 20),
//                 controller: tabController,
//                 labelColor: Colors.black,
//                 unselectedLabelColor: Colors.grey,
//                 indicatorSize: TabBarIndicatorSize.label,
//                 dividerColor: Colors.transparent,
//                 isScrollable: true,
//                 tabs: const [
//                   Tab(text: 'Places'),
//                   Tab(text: 'Inspire'),
//                   Tab(text: 'Emotions'),
//                 ],
//               ),
//             ),
//
//             Container(
//               padding: EdgeInsets.only(left: 20),
//               height: 300,
//               width: double.maxFinite,
//               child: TabBarView(
//                 controller: tabController,
//                 children:  [
//                    ListView.builder(
//                      itemCount:3,
//                      scrollDirection: Axis.horizontal,
//                      itemBuilder: (BuildContext context, int index) {
//                        return Container(
//                          margin: EdgeInsets.only(right: 10),
//                          width: 200,
//                          height: 300,
//                          decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(20),
//                              color: Colors.white,
//                              image: DecorationImage(image: AssetImage('assets/images/fruits.jpg',),fit: BoxFit.cover)
//                          ),
//                        );
//                      },
//                    ),
//                   ListView.builder(
//                     itemCount:3,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         margin: EdgeInsets.only(right: 10),
//                         width: 200,
//                         height: 300,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.white,
//                             image: DecorationImage(image: AssetImage('assets/images/fruits.jpg',),fit: BoxFit.cover)
//                         ),
//                       );
//                     },
//                   ),
//                   ListView.builder(
//                     itemCount:3,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         margin: EdgeInsets.only(right: 10),
//                         width: 200,
//                         height: 300,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.white,
//                             image: DecorationImage(image: AssetImage('assets/images/fruits.jpg'),fit: BoxFit.cover)
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 25),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text('Explore more',style: style),
//                 ),
//                 SizedBox(width: 190),
//                 Text('See all',style: style,),
//               ],
//             ),
//             SizedBox(height: 20),
//             Container(
//               height: 100,
//               width: double.maxFinite,
//               margin: EdgeInsets.only(left: 20),
//               child: ListView.builder(
//                 itemCount: 4,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context,index){
//                 return Column(
//                   children: [
//                     Container(
//                 margin: EdgeInsets.only(right: 10),
//                     width: 80,
//                     height: 80,
//                     decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                     image: DecorationImage(image: AssetImage('assets/images/fruits.jpg',),fit: BoxFit.cover)
//                     ),
//                     ),
//                     Container(
//                       child: Text(provider.name[index].title)
//                     )
//                   ],
//                 );
//               }),
//             ),
//
//           ],
//         ),
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//           index: 0,
//           backgroundColor: Colors.blueAccent,
//           items: [
//             CurvedNavigationBarItem(child: Icon(Icons.home),label: 'Home'),
//             CurvedNavigationBarItem(child: Icon(Icons.search_rounded),label: 'search'),
//             CurvedNavigationBarItem(child: Icon(Icons.chat),label: 'chat'),
//             CurvedNavigationBarItem(child: Icon(Icons.newspaper),label: 'Feed'),
//             CurvedNavigationBarItem(child: Icon(Icons.perm_identity), label: 'Personal',),
//           ],
//           onTap: (index){
//           }
//       ),
//     );
//   }
// }

import 'package:calculatorapp/viewmodel/travelviewmodel.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';  // ✅ Import shimmer

import '../model/appcolor.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<Travelviewmodel>();
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Icon(Icons.menu_sharp),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/fruits.jpg'),
                    radius: 25,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Discover',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 30),

            Container(
              child: TabBar(
                controller: tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                dividerColor: Colors.transparent,
                isScrollable: true,
                tabs: const [
                  Tab(text: 'Places'),
                  Tab(text: 'Inspire'),
                  Tab(text: 'Emotions'),
                ],
              ),
            ),

            // ✅ UPPER CONTAINERS WITH SHIMMER
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: provider.isLoading
                  ? TabBarView(
                controller: tabController,
                children: [
                  _buildShimmerTabView(), // Shimmer for Places
                  _buildShimmerTabView(), // Shimmer for Inspire
                  _buildShimmerTabView(), // Shimmer for Emotions
                ],
              )
                  : TabBarView(
                controller: tabController,
                children: [
                  // Real Places Tab
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/fruits.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  // Real Inspire Tab
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/fruits.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  // Real Emotions Tab
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/fruits.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Explore more',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'See all',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // ✅ BOTTOM CONTAINERS WITH SHIMMER
            provider.isLoading
                ? Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            width: 60,
                            height: 12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
                : Container(
              height: 120,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                itemCount: provider.name.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('assets/images/fruits.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          provider.name[index].title,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.blueAccent,
        items: [
          CurvedNavigationBarItem(child: Icon(Icons.home), label: 'Home'),
          CurvedNavigationBarItem(child: Icon(Icons.search_rounded), label: 'search'),
          CurvedNavigationBarItem(child: Icon(Icons.chat), label: 'chat'),
          CurvedNavigationBarItem(child: Icon(Icons.newspaper), label: 'Feed'),
          CurvedNavigationBarItem(child: Icon(Icons.perm_identity), label: 'Personal'),
        ],
        onTap: (index) {},
      ),
    );
  }

  // ✅ NEW METHOD: Shimmer for Upper TabBarView
  Widget _buildShimmerTabView() {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}