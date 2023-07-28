import 'package:flutter/material.dart';
import 'package:mon_blog/theme/app_colors.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';

class FooterWidget extends StatelessWidget {
  FooterWidget({super.key});

  final ContactInfo contactInfo = ContactInfo(
      emailAdress: "marieliserenzema@hotmail.fr",
      phoneNumber: "06 35 17 90 73",
      socialListUrl: <String, String>{
        "Linkedin": "https://gitlab.com/marieliserenzema",
        "GitLab": "https://gitlab.com/marieliserenzema",
        "Autre": "https://gitlab.com/marieliserenzema",
      });

  List<String> get _socialUrlNameList => contactInfo.socialListUrl.keys.toList();
  List<String> get _socialUrlList => contactInfo.socialListUrl.values.toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.4, color: purple),
        ),
      ),
      child: Column(
        children: <Widget>[
          gapH12,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < contactInfo.socialListUrl.values.length; i++)
                TextButton(
                  onPressed: () => {print(_socialUrlList[i])},
                  child: Text(
                    _socialUrlNameList[i],
                    style: smallTitle,
                  ),
                ),
            ],
          ),
          gapH48,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                contactInfo.emailAdress,
                style: mediumText,
              ),
              gapW8,
              Text("|", style: mediumText),
              gapW8,
              Text("Tél: ${contactInfo.phoneNumber}", style: mediumText),
            ],
          ),
          gapH48,
          Text(
            "© 2023 par Marie Lise.",
            style: smallText,
          )
        ],
      ),
    );
  }
}

class ContactInfo {
  ContactInfo({
    required this.emailAdress,
    required this.phoneNumber,
    this.socialListUrl = const <String, String>{},
  });
  final String emailAdress;
  final String phoneNumber;
  final Map<String, String> socialListUrl;
}
