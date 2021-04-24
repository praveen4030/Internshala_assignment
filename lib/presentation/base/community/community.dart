import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:key2iq_assignment/presentation/base/community/widgets/community_tile.dart';
import 'package:key2iq_assignment/presentation/base/community/widgets/header.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';
import 'package:key2iq_assignment/presentation/route/router.gr.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key key}) : super(key: key);

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<Widget> _listTiles1;
  List<Widget> _listTiles2;
  @override
  void initState() {
    super.initState();
    _listTiles1 = <Widget>[
      CommunityTile(
        title: "Compete Now",
        subtitle: "Challenges for you",
        iconData: Icons.grading,
        onTap: () {
          ExtendedNavigator.of(context).push(Routes.competeNowPage);
        },
      ),
      const CommunityTile(
        title: "Explore",
        subtitle: "See rappers like you",
        iconData: Icons.explore,
      ),
      const CommunityTile(
        title: "Learn Rap",
        subtitle: "Learn rap and perform",
        iconData: Icons.queue_music,
      ),
    ];
    _listTiles2 = <Widget>[
      const CommunityTile(
        title: "Meet new rappers",
        subtitle: "Chat With Other Rappers",
        iconData: Icons.music_note,
      ),
      const CommunityTile(
        title: "Play & Learn",
        subtitle: "Learn in funway",
        iconData: Icons.self_improvement,
      ),
      const CommunityTile(
        title: "Practice rap",
        subtitle: "Do practice and be perfect",
        iconData: Icons.music_video,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.lightGreyColor,
      appBar: AppBar(
        toolbarHeight: 90,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: CommunityHeader(),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What do you want to do ...",
                  style: TextStyle(
                    color: Kolors.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: communityTilesList(_listTiles1),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: communityTilesList(_listTiles2),
                    ),
                  ],
                )
                // GridView.count(
                //   crossAxisCount: 2,
                //   children: _listTile,
                //   childAspectRatio: 0.68,
                //   mainAxisSpacing: 4.0,
                //   crossAxisSpacing: 16.0,
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   primary: false,
                // ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Kolors.yellorColor,
        child: const Icon(Icons.edit_sharp),
      ),
    );
  }

  Widget communityTilesList(List<Widget> widgets) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return widgets[index];
      },
      itemCount: widgets.length,
    );
  }
}
