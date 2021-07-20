import 'package:flutter/material.dart';

import 'app/dependencies.dart' as di;
import 'app/router.dart';

void main() {
  di.init();

  runApp(
    MaterialApp(
      title: 'Techncian App ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      initialRoute: '/',
      onGenerateRoute: createRoute,
    ),
  );
}
