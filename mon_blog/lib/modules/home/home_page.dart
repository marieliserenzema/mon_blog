import 'package:flutter/material.dart';
import 'package:mon_blog/modules/appbar/appbar_widget.dart';
import 'package:mon_blog/modules/home/widget/welcome_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: Column(children: [
        WelcomeWidget(),
      ]),
    );
  }
}
