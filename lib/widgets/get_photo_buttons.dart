import 'package:finalproject_pmoif20a_nurhakim/controllers/wisata_controller.dart';
import 'package:flutter/material.dart';
import 'package:finalproject_pmoif20a_nurhakim/themes/themes.dart';
import 'package:get/get.dart';

class GetPhotoButtons extends StatelessWidget {
  String name;
  var source;
  GetPhotoButtons({
    required this.name,
    this.source,
  });
  @override
  Widget build(BuildContext context) {
    final coffeeC = Get.find<WisataController>();

    return Container(
      width: 140,
      child: TextButton(
        onPressed: () {
          coffeeC.getImage(source);
          Navigator.pop(context);
        },
        child: Text(
          name,
          style: rosarivo.copyWith(
            color: bgColor,
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}
