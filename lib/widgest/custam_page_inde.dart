import 'package:flutter/material.dart';

class Custampageindicator extends StatelessWidget {
  const Custampageindicator({
    this.marginEnd = 0,
    required this.isCurrentIndex,
    super.key,
  });

  final double marginEnd;
  final bool isCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: isCurrentIndex ? 40 : 10,
      height: 8,
      decoration: BoxDecoration(
        color: isCurrentIndex ? Color(0xff1B80A1) : Color(0xffD6D6D6),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
