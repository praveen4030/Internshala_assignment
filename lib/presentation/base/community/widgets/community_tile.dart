import 'package:flutter/material.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';

class CommunityTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  final String image;
  final Function onTap;
  const CommunityTile({
    Key key,
    @required this.title,
    @required this.subtitle,
    this.iconData,
    this.onTap,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8,
        ),
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Kolors.blackDarkGradient,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                color: Kolors.blackDarkGradient,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (image != null)
                    Image.asset(image)
                  else
                    Icon(
                      iconData,
                      color: Colors.white,
                      size: 60,
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
