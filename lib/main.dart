import 'package:bobo/pages/homepage.dart';
import 'package:bobo/pages/title.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: TitlePage(),
        ),
        body: ListView(
          children: [Homepage()],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 70,
          backgroundColor: Colors.transparent,
          color: Colors.purple.shade700,
          onTap: (index) {},
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.list_bullet,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
