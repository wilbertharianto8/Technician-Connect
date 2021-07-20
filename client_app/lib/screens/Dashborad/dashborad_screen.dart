import 'package:client_app/screens/dashborad/bar.dart';
import 'package:client_app/screens/dashborad/body.dart';
import 'package:client_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dashboard_viewmodel.dart';
import '../view.dart';

class DashboardScreen extends StatelessWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => DashboardScreen());
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: View(
            viewmodel: DashboardViewModel(),
            builder: (_, dashboardViewModel, __) {
              if (dashboardViewModel.isUserSignedIn) {
                if (dashboardViewModel.user.role == 1) {
                  return Scaffold(
                    appBar: Bar(),
                    body: DashboradBody(viewmodel: dashboardViewModel),
                  );
                } else {
                  Navigator.pushNamed(context, '/detail');
                }
              }
              return Scaffold(body: SplashScreen(dashboardViewModel));
            }),
      ),
    );
  }
}
