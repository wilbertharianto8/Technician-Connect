import 'package:flutter/material.dart';

import 'bar.dart';
import 'body.dart';

class DetailTask extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => DetailTask());
  //!const DetailTask({ Key? key }) : super(key: key);

  @override
  _DetailTaskState createState() => _DetailTaskState();
}

class _DetailTaskState extends State<DetailTask> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: DetailBody(),
        ),
      ),
    );
  }
}
