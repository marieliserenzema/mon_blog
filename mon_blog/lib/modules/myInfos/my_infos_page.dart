import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mon_blog/modules/appbar/appbar_widget.dart';
import 'package:mon_blog/modules/footer/footer_widget.dart';
import 'package:mon_blog/modules/myInfos/widget/ability_widget.dart';
import 'package:mon_blog/modules/myInfos/widget/contact_widget.dart';
import 'package:mon_blog/modules/myInfos/widget/experience_widget.dart';
import 'package:mon_blog/modules/myInfos/widget/profil_widget.dart';
import 'package:mon_blog/modules/myInfos/widget/tools_widget.dart';
import 'package:mon_blog/theme/app_colors.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class MyInfosPage extends StatelessWidget {
  const MyInfosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          gapH64,
          Text(
            "Marie Lise, c'est moi.",
            style: extraLargeTitle,
          ),
          gapH64,
          const ProfilWidget(),
          gapH32,
          const ExperienceWidget(),
          gapH32,
          const AbilityWidget(),
          gapH32,
          const ToolsWidget(),
          gapH32,
          const ContactWidget(),
          gapH64,
          FooterWidget(),
        ]),
      ),
    );
  }
}
