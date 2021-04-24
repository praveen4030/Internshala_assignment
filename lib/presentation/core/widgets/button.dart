import 'package:flutter/material.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';

class ButtonWidget extends StatelessWidget {
  final Function onTap;
  final String text;
  final bool isEnabled;
  const ButtonWidget({
    Key key,
    @required this.onTap,
    @required this.text,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: isEnabled ? Kolors.blackDarkGradient : Kolors.darkGreyColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
