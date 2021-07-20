import 'package:client_app/screens/task/widgets/body.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => TaskScreen());

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
              'Task List',
            ),
            centerTitle: true,
          ),
          body: Body(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            tooltip: 'Add Task',
            heroTag: null,
          ),
        )));
  }
}
