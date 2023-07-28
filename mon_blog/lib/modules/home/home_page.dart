import 'package:flutter/material.dart';
import 'package:mon_blog/modules/appbar/appbar_widget.dart';
import 'package:mon_blog/modules/footer/footer_widget.dart';
import 'package:mon_blog/theme/app_colors.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            color: beige,
            padding: const EdgeInsets.symmetric(horizontal: 220.0),
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: largeTitle,
                ),
                gapH48,
                Text(
                  desc,
                  style: mediumText,
                )
              ],
            ),
          ),
          Row(children: [
            Container(
                width: width / 2,
                height: 300,
                color: orange,
                child: const Center(
                  child: Text("Stage 1"),
                )),
            Container(
              width: width / 2,
              height: 300,
              color: purple,
              child: const Center(
                child: Text("Stage 2"),
              ),
            ),
          ]),
          gapH48,
          Center(
            child: Text(
              "Travaillons ensemble :) ",
              style: mediumTitle,
            ),
          ),
          gapH48,
          FooterWidget()
        ]),
      ),
    );
  }
}
