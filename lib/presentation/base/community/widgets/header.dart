import 'package:flutter/material.dart';
import 'package:key2iq_assignment/presentation/base/community/widgets/column_icon_text.dart';

class CommunityHeader extends StatelessWidget {
  const CommunityHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const ColumnIconText(
            text: "MENU",
            iconData: Icons.menu,
            isEnabled: true,
          ),
          const ColumnIconText(
            text: "COMPETE",
            iconData: Icons.settings_input_composite_rounded,
          ),
          const ColumnIconText(
            text: "EXPLORE",
            iconData: Icons.explore,
          ),
          const ColumnIconText(
            text: "FEEDBACK",
            iconData: Icons.thumb_up_sharp,
          ),
        ],
      ),
    );
  }
}
