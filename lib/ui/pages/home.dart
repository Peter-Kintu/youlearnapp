// // import 'package:flutter/material.dart';
// import 'package:youlearn2/ui/widgets/overlay.dart';
// import 'package:youlearn2/theme/box_icons_icons.dart';
// import 'package:youlearn2/theme/config.dart';
// import 'package:youlearn2/ui/pages/leaderboard.dart';
// import 'package:youlearn2/ui/pages/planner.dart';
// import 'package:youlearn2/ui/pages/videos.dart';
// import 'package:youlearn2/ui/widgets/sectionHeader.dart';
// import 'package:youlearn2/ui/widgets/topBar.dart';
// import 'package:youlearn2/ui/widgets/videoCard.dart';
// import 'package:youlearn2/theme/theme.dart';

// class Home extends StatefulWidget {
//   final Function onMenuTap;
//   final String title;

//   const Home({Key? key, required this.onMenuTap, required this.title}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> with TickerProviderStateMixin {
//   int tabNo = 0;
//   late final TabController _tabController;
//   bool overlayVisible = false;

//   @override
//   void initState() {
//     _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: overlayVisible,
//               onChanged: (value) {
//                 setState(() {
//                   overlayVisible = value;
//                 });
//               },
//               activeColor: Colors.lightBlue,
//               inactiveThumbColor: const Color(0xFFADADAD),
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   PlannerPage(),
//                   VideosPage(),
//                   LeaderboardPage(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: tabNo,
//         onTap: (index) {
//           setState(() {
//             tabNo = index;
//             _tabController.animateTo(index);
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: const Icon(BoxIcons.bx_home_circle),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(BoxIcons.bx_calendar),
//             label: 'Planner',
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(BoxIcons.bxs_videos),
//             label: 'Videos',
//           ),
//           BottomNavigationBarItem(
//             icon: const Icon(BoxIcons.bx_stats),
//             label: 'Leaderboard',
//           ),
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:youlearn2/ui/widgets/overlay.dart';
import 'package:youlearn2/theme/box_icons_icons.dart';
import 'package:youlearn2/theme/config.dart';
import 'package:youlearn2/ui/pages/leaderboard.dart';
import 'package:youlearn2/ui/pages/planner.dart';
import 'package:youlearn2/ui/pages/videos.dart';
import 'package:youlearn2/ui/widgets/sectionHeader.dart';
import 'package:youlearn2/ui/widgets/topBar.dart';
import 'package:youlearn2/ui/widgets/videoCard.dart';
import 'package:youlearn2/theme/theme.dart';

class Home extends StatefulWidget {
  final Function onMenuTap;
  final String title;

  const Home({super.key, required this.onMenuTap, required this.title, required Home Function(dynamic context) builder});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int tabNo = 0;
  late final TabController _tabController;
  bool overlayVisible = false;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: overlayVisible,
              onChanged: (value) {
                setState(() {
                  overlayVisible = value;
                });
              },
              activeColor: const Color.fromARGB(255, 66, 42, 104),
              inactiveThumbColor: const Color(0xFFADADAD),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  PlannerPage(onMenuTap: onMenuTap()),
                  VideosPage(onMenuTap: onMenuTap()),
                  LeaderboardPage(onMenuTap: onMenuTap()),
                  
                ],
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabNo,
        onTap: (index) {
          setState(() {
            tabNo = index;
            _tabController.animateTo(index);
          });
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: tabNo,
      //   onTap: (index) {
      //     setState(() {
      //       tabNo = index;
      //       _tabController.animateTo(index);
      //     });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(BoxIcons.bx_calendar),
            label: 'Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(BoxIcons.bxs_videos),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: Icon(BoxIcons.bx_stats),
            label: 'Leaderboard',
          ),
        ],
      ),
    );
  }

  onMenuTap() {
    ButtonActivateIntent;
  }
}
