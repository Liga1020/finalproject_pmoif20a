import 'package:finalproject_pmoif20a_nurhakimsuryaa/pages/home_page.dart';
import 'package:finalproject_pmoif20a_nurhakimsuryaa/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../themes/themes.dart';

class SellerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteName.addCoffee_page);
        },
        backgroundColor: primaryColor,
        child: Icon(
          Icons.add,
          color: bgColor,
        ),
      ),
      body: HomePage(),
    );
  }
}
