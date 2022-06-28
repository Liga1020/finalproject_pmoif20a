import 'package:finalproject_pmoif20a_nurhakim/pages/front_page.dart';
import 'package:finalproject_pmoif20a_nurhakim/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FrontPage(),
      getPages: AppRoutes.pages,
    );
  }
}
