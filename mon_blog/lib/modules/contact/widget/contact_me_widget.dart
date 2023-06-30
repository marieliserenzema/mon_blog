import 'package:flutter/material.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Comment \n',
          style: contactPageTitleStyle,
          children: const <TextSpan>[
            TextSpan(text: '   me \n', style: TextStyle(fontSize: veryVeryLarge)),
            TextSpan(text: 'contacter. \n', style: TextStyle(fontSize: veryVeryLarge)),
          ],
        ),
      ),
    );
  }
}
