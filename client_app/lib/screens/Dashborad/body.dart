import 'package:client_app/screens/taskForm/form_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard_viewmodel.dart';

class DashboradBody extends StatelessWidget {
  final DashboardViewModel _viewmodel;
  DashboradBody({DashboardViewModel viewmodel}) : _viewmodel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(15.0),
                child: new MaterialButton(
                  height: 100.0,
                  minWidth: 150.0,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: new Text("Task Form"),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormTask()),
                    )
                  },
                  splashColor: Colors.redAccent,
                )),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new MaterialButton(
                height: 100.0,
                minWidth: 150.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("Task List"),
                onPressed: () => Navigator.pushNamed(context, '/task'),
                splashColor: Colors.redAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new MaterialButton(
                height: 100.0,
                minWidth: 150.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("Technician List"),
                onPressed: () => Navigator.pushNamed(context, '/tech'),
                splashColor: Colors.redAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new MaterialButton(
                height: 100.0,
                minWidth: 150.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("todo"),
                onPressed: () => Navigator.pushNamed(context, '/Todo'),
                splashColor: Colors.redAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new MaterialButton(
                height: 100.0,
                minWidth: 150.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("Logout"),
                onPressed: () => _onPressLogoutButton(context),
                splashColor: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressLogoutButton(contex) => _viewmodel.user = null;
}
