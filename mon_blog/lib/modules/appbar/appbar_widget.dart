import 'package:flutter/material.dart';
import 'package:mon_blog/modules/home/home_page.dart';
import 'package:mon_blog/modules/myInfos/my_infos_page.dart';
import 'package:mon_blog/theme/app_style.dart';
import 'package:mon_blog/theme/text.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool _isActivateTab1 = true;
  bool _isActivateTab2 = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leadingWidth: 100,
      leading: Center(
        child: Text(
          name,
          style: smallTitle,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => {
            setState(() => _isActivateTab1 = !_isActivateTab1),
            setState(() => _isActivateTab2 = !_isActivateTab2),
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyHomePage()))
          },
          child: Text(
            "Mes projects",
            style: _isActivateTab1 ? mediumText : blackMediumText,
          ),
        ),
        TextButton(
          onPressed: () => {
            setState(() => _isActivateTab2 = !_isActivateTab2),
            setState(() => _isActivateTab1 = !_isActivateTab1),
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyInfosPage()))
          },
          child: Text(
            "À propos",
            style: _isActivateTab2 ? mediumText : blackMediumText,
          ),
        ),
      ],
    );
  }
}
