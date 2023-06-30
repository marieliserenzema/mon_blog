import 'package:flutter/material.dart';
import 'package:mon_blog/modules/appbar/appbar_widget.dart';
import 'package:mon_blog/theme/app_colors.dart';
import 'package:mon_blog/modules/common_widget/square_widget.dart';
import 'package:mon_blog/modules/contact/widget/contact_me_widget.dart';
import 'package:mon_blog/modules/contact/widget/contact_detail_widget.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key, required this.title});
  final String title;

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - 60;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SquareWidget(color: yellow, height: screenHeight / 2, width: screenWidth / 2),
              SquareWidget(
                  color: pink, height: screenHeight / 2, width: screenWidth / 2, widget: const ContactMeWidget())
            ],
          ),
          Row(
            children: [
              SquareWidget(color: lightGreen, height: screenHeight / 2, width: screenWidth / 2),
              SquareWidget(
                color: grey,
                height: screenHeight / 2,
                width: screenWidth / 2,
                widget: ContactDetailWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}
