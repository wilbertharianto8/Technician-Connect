import 'package:flutter/material.dart';

class Bar extends StatefulWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Dashboard'),
      leading: Container(),
      centerTitle: true,
    );
  }
}
