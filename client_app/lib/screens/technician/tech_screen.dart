import 'package:flutter/material.dart';
import 'widgets/body.dart';

class Tech extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => Tech());

  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      icon: Icon(Icons.arrow_back)),
                  title: Text(
                    'Technician List',
                  ),
                  centerTitle: true,
                ),
                body: Body())));
  }
}
