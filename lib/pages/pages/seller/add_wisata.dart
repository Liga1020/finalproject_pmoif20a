import 'dart:io';
import 'dart:math';
import 'package:finalproject_pmoif20a_nurhakim/controllers/wisata_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/themes/themes.dart';
import 'package:finalproject_pmoif20a_nurhakim/widgets/get_photo_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddWisata extends StatelessWidget {
  final TextEditingController textWisata = TextEditingController();
  final TextEditingController textName = TextEditingController();
  final TextEditingController textDescription = TextEditingController();
  final TextEditingController textPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final wisataC = Get.find<WisataController>();

    Widget arrowBack() {
      return Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(
              left: 16,
              top: 20,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget image() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 24),
          child: Stack(
            children: [
              Obx(
                    () => (wisataC.selectedImagePath.value == '')
                    ? CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/image_photo.png',
                  ),
                  radius: 90,
                )
                    : CircleAvatar(
                  backgroundImage: FileImage(
                    File(wisataC.selectedImagePath.value),
                  ),
                  radius: 90,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Get.dialog(
                      Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GetPhotoButtons(
                                name: 'Gallery',
                                source: ImageSource.gallery,
                              ),
                              GetPhotoButtons(
                                name: 'Camera',
                                source: ImageSource.camera,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add_a_photo,
                      color: bgColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget wisata() {
      return Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'wisata',
              style: rosarivo.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Container(
              height: 25,
              child: TextField(
                controller: textWisata,
                textInputAction: TextInputAction.next,
                style: openSans.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget name() {
      return Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: rosarivo.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Container(
              height: 25,
              child: TextField(
                controller: textName,
                textInputAction: TextInputAction.next,
                style: openSans.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: rosarivo.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Container(
              height: 25,
              child: TextField(
                controller: textDescription,
                textInputAction: TextInputAction.next,
                style: openSans.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget price() {
      return Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 28,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: rosarivo.copyWith(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Container(
              height: 25,
              child: TextField(
                controller: textPrice,
                textInputAction: TextInputAction.done,
                onEditingComplete: () {
                  wisataC.addItem(
                    wisataC.selectedImagePath.value,
                    textWisata.text,
                    textName.text,
                    textDescription.text,
                    textPrice.text,
                    Random().nextInt(10),
                  );
                },
                style: openSans.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget add() {
      return Container(
        width: double.infinity,
        height: 45,
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: TextButton(
          onPressed: () {
            wisataC.addItem(
              wisataC.selectedImagePath.value,
              textWisata.text,
              textName.text,
              textDescription.text,
              textPrice.text,
              Random().nextInt(10),
            );
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: primaryColor,
          ),
          child: Text(
            'Add',
            style: openSans.copyWith(
              color: bgColor,
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            arrowBack(),
            image(),
            wisata(),
            name(),
            description(),
            price(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            add(),
          ],
        ),
      ),
    );
  }
}
