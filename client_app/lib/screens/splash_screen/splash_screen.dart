import 'package:client_app/screens/dashborad/dashboard_viewmodel.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final DashboardViewModel _viewmodel;
  SplashScreen(DashboardViewModel viewmodel) : _viewmodel = viewmodel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Image.asset('images/logo.png', fit: BoxFit.fill),
              width: 200,
              height: 200),
          SizedBox(height: 30),
          Container(
            child: Text(
              'TECHCON',
              style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 70),
          Container(
              child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () async {
                    final _user = await Navigator.pushNamed(context, '/login');
                    if (_user != null) {
                      _viewmodel.user = _user;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                      textStyle: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)))),
        ],
      ),
    );
  }
}
