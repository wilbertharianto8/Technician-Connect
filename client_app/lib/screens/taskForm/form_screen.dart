import 'package:flutter/material.dart';

import 'bar.dart';
import 'body.dart';

class FormTask extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => FormTask());
  //!const FormTask({ Key? key }) : super(key: key);

  @override
  _FormTaskState createState() => _FormTaskState();
}

class _FormTaskState extends State<FormTask> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: FormBody(),
        ),
      ),
    );
  }
}
