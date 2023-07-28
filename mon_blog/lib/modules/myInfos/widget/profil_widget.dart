import 'package:flutter/material.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class ProfilWidget extends StatelessWidget {
  const ProfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Profil",
          style: largeTitle,
        ),
        gapW300,
        Container(
            color: Colors.red,
            width: 600,
            child: Text(
              profilDescription,
              style: mediumText,
            )),
      ],
    );
  }
}
