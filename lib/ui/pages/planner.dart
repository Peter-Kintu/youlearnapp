import 'package:youlearn2/theme/config.dart' as config;
import 'package:youlearn2/ui/widgets/card.dart';
import 'package:youlearn2/ui/widgets/sectionHeader.dart';
import 'package:youlearn2/ui/widgets/topBar.dart';
import 'package:youlearn2/ui/widgets/videoCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter/material.dart' as material;

// ignore: must_be_immutable
class PlannerPage extends StatelessWidget {
  PlannerPage({
    super.key,
    required this.onMenuTap,
  });
  final Function? onMenuTap;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: config.Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFixedExtentList(
                    delegate: SliverChildListDelegate.fixed([Container()]),
                    itemExtent: MediaQuery.of(context).size.height * 0.16),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Today\'s Work',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return const VideoCard(long: true);
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Calendar',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 450,
                    child: CardWidget(
                      button: false,
                      gradient: false,
                      child: material.Material(
                        child: CalendarCarousel(
                          isScrollable: false,
                          todayButtonColor: material.Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 70,
                    child: Text(""),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: TopBar(
              controller: controller,
              expanded: false,
              onMenuTap: onMenuTap,
            ),
          )
        ],
      ),
    );
  }
}