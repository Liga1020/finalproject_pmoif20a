import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'screens/root_app.dart';
import 'theme/color.dart';
import 'package:firebaselogin/SignIn.dart';
import 'package:firebaselogin/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      theme: ThemeData(
        primaryColor: primary,
      ),

      home: const RootApp(),
      routes: {
        '/home': (BuildContext context) => HomePage(),
        '/signin': (BuildContext context) => SignIn(),
        '/signup': (BuildContext context) => SignUp()
      },
    );
  }
}