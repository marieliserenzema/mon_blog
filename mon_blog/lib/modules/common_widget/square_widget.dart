import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  const SquareWidget(
      {super.key, required this.color, required this.height, required this.width, this.widget = const SizedBox()});
  final Color color;
  final double height;
  final double width;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: widget,
    );
  }
}
