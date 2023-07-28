import 'package:flutter/material.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class ToolsWidget extends StatelessWidget {
  const ToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Outils",
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
