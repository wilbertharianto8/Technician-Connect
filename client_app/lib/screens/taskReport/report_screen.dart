import 'package:flutter/material.dart';

import 'bar.dart';
import 'body.dart';

class ReportTask extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => ReportTask());
  //!const ReportTask({ Key? key }) : super(key: key);

  @override
  _ReportTaskState createState() => _ReportTaskState();
}

class _ReportTaskState extends State<ReportTask> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: ReportBody(),
        ),
      ),
    );
  }
}
