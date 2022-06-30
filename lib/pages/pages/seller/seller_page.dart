import 'package:finalproject_pmoif20a_nurhakim/pages/home_page.dart';
import 'package:finalproject_pmoif20a_nurhakim/routes/routes_name.dart';
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
          Get.toNamed(RouteName.addWisata_page);
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
