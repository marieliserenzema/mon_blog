import 'package:flutter/material.dart';
import 'package:mon_blog/modules/home/home_page.dart';
import 'package:mon_blog/theme/app_colors.dart';
import 'package:mon_blog/theme/app_sizes.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/modules/contact/contact_page.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List<String> menuItems = ["Mes compétences", "Mes expériences", "Me contacter"];
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: beige,
      title: RichText(
        text: TextSpan(
          style: appBarTitleStyle,
          children: const <TextSpan>[
            TextSpan(
              text: "my ",
              style: TextStyle(fontSize: small),
            ),
            TextSpan(
              text: "little blog",
              style: TextStyle(fontSize: large),
            ),
          ],
        ),
      ),
      actions: [
        PopupMenuButton(
            surfaceTintColor: beige,
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            color: beige,
            itemBuilder: (BuildContext context) {
              return menuItems.map((
                String item,
              ) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item, style: menuItemsStyle),
                );
              }).toList();
            },
            onSelected: (value) {
              if (value == menuItems[0]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyHomePage(
                            title: "home page",
                          )),
                );
              } else if (value == menuItems[1]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyHomePage(
                            title: "home page",
                          )),
                );
              } else if (value == menuItems[2]) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContactPage(
                            title: "contact page",
                          )),
                );
              }
            }),
      ],
      centerTitle: true,
    );
  }
}
