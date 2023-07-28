import 'package:flutter/material.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: largeTitle,
        ),
        const Spacer(),
        SizedBox(
          width: 500,
          child: Text(
            description,
            style: mediumText,
          ),
        ),
      ],
    );
  }
}
