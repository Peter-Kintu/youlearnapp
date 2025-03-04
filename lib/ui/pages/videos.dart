import 'package:youlearn2/theme/config.dart' as config;
import 'package:youlearn2/ui/widgets/sectionHeader.dart';
import 'package:youlearn2/ui/widgets/topBar.dart';
import 'package:youlearn2/ui/widgets/videoCard.dart';
import 'package:flutter/cupertino.dart';


// ignore: must_be_immutable
class VideosPage extends StatelessWidget {
  VideosPage({
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
                    text: 'Best of Physics',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const VideoCard(long: false);
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Best of Chemistry',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const VideoCard(long: false);
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Best of Maths',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const VideoCard(long: false);
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Best of Biology',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const VideoCard(long: false);
                      },
                    ),
                  ),
                ),
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