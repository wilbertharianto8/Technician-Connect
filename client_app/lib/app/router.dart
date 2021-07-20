import 'package:client_app/screens/dashborad/dashborad_screen.dart';
import 'package:client_app/screens/taskForm/form_screen.dart';
import 'package:client_app/screens/taskDetail/detail_screen.dart';
import 'package:client_app/screens/taskReport/report_screen.dart';
import 'package:client_app/screens/technician/tech_screen.dart';
import 'package:client_app/screens/progresstask/progress_screen.dart';
import 'package:client_app/screens/Tasktodo/do.dart';
import 'package:client_app/screens/Tasktodo/edit.dart';
import 'package:client_app/screens/Tasktodo/done.dart';
import 'package:flutter/material.dart';
import '../screens/login/login_screen.dart';
import '../screens/task/task_screen.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/dashboard':
      return DashboardScreen.route();
    case '/task':
      return TaskScreen.route();
    case '/tech':
      return Tech.route();
    case '/login':
      return LoginScreen.route();
    case '/form':
      return FormTask.route();
    case '/detail':
      return DetailTask.route();
    case '/prog':
      return Prog.route();
    case '/Todo':
      return Todo.route();
    case '/Edit':
      return Edit.route();
    case '/Done':
      return Done.route();
    case '/report':
      return ReportTask.route();
  }
  return null;
}
