import 'package:flutter/material.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Expériences",
          style: largeTitle,
        ),
        const Spacer(),
        SizedBox(
          width: 500,
          child: Text(
            profilDescription,
            style: mediumText,
          ),
        ),
      ],
    );
  }
}
