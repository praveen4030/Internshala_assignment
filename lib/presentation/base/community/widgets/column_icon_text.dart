import 'package:flutter/material.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';

class ColumnIconText extends StatelessWidget {
  final String text;
  final String image;
  final IconData iconData;
  final bool isEnabled;
  const ColumnIconText({
    Key key,
    @required this.text,
    this.iconData,
    this.image,
    this.isEnabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: isEnabled ? Kolors.primaryLightColor : Colors.white,
      ),
      child: Column(
        children: [
          if (image != null)
            Image.asset(image)
          else
            Icon(
              iconData,
              color: isEnabled ? Kolors.primaryColor : Kolors.blackColor,
            ),
          Text(
            text,
            style: TextStyle(
              color: isEnabled ? Kolors.primaryColor : Kolors.blackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
