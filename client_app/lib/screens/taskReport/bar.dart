import 'package:flutter/material.dart';
import 'report_screen.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Task Report'),
      leading: Container(),
      centerTitle: true,
    );
  }
}
