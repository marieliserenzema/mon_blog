import 'package:flutter/material.dart';
import 'package:mon_blog/modules/appbar/appbar_widget.dart';
import 'package:mon_blog/modules/footer/footer_widget.dart';
import 'package:mon_blog/modules/myInfos/widget/info_widget.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class MyInfosPage extends StatelessWidget {
  MyInfosPage({super.key});

  final MyInfos myInfo = MyInfos(myInfos: <String, String>{
    "Profil": profilDescription,
    "Experience": profilDescription,
    "Compétence": profilDescription,
    "Outils": profilDescription,
    "Contact": profilDescription,
  });

  List<String> get _caseDescriptionList => myInfo.keys.toList();
  List<String> get _caseNameList => myInfo.values.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Column(children: [
            gapH64,
            Text(
              "Marie Lise, c'est moi.",
              style: extraLargeTitle,
            ),
            gapH64,
            Column(
              children: [
                for (int i = 0; i < _caseDescriptionList.length; i++)
                  InfoWidget(
                    title: _caseNameList[i],
                    description: _caseDescriptionList[i],
                  ),
              ],
            ),
            gapH64,
            FooterWidget(),
          ]),
        ),
      ),
    );
  }
}

class MyInfos {
  MyInfos({
    this.myInfos = const <String, String>{},
  });
  final Map<String, String> myInfos;

  get values => null;

  get keys => null;
}
