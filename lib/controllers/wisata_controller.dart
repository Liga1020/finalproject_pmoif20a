import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:finalproject_pmoif20a_nurhakim/models/wisata_model.dart';
import 'package:finalproject_pmoif20a_nurhakim/routes/routes_name.dart';
import 'package:finalproject_pmoif20a_nurhakim/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:finalproject_pmoif20a_nurhakim/helper/bantuan.dart';

class WisataController extends GetxController {
  var wisataList = <WisataModel>[].obs;
  String imagepath = "";

  int get jumlahWisata => wisataList.length;

  WisataModel selectedById(String id) =>
      wisataList.firstWhere((wisata) => wisata.id == id);

  @override
  void onInit() {
    // TODO: implement onInit
    initialData();
    super.onInit();
  }

  var selectedImagePath = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      // imagepath = pickedFile.path;
      // File imagefile = File(imagepath); //convert Path to File
      // Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
      // String base64string = base64.encode(imagebytes); //convert bytes to base64 string
      // print(base64string); 
      selectedImagePath.value = pickedFile.path;
    } else {
      snackBar(
        'NO IMAGE',
        'Please choose an image',
        bgColor,
        bgColor,
        Colors.redAccent,
      );
    }
  }

  Future addItem(String imageUrl, String wisata, String name,
      String description, String price, int score) async {
    var url = Uri.parse(baseURL + '/tiket');
    if (imageUrl == '' ||
        wisata == '' ||
        name == '' ||
        price == '' ||
        description == '') {
      snackBar(
        'WARNING',
        'Please fill the input field',
        bgColor,
        bgColor,
        Colors.redAccent,
      );
    } else {
      final response = await http
          .post(
        url,
        body: json.encode(
          {
            'imageUrl': imageUrl,
            'wisata': wisata,
            'name': name,
            'description': description,
            'price': price,
            'score': score,
          },
        ),
      )
          .then(
            (response) => wisataList.add(
          WisataModel(
            id: json.decode(response.body)['name'].toString(),
            score: score,
            imageUrl: selectedImagePath.value,
            wisata: wisata,
            name: name,
            description: description,
            price: price,
          ),
        ),
      )
          .then(
            (value) => snackBar(
          'SUCCESS',
          'New item added',
          bgColor,
          bgColor,
          primaryColor,
        ),
      );
      selectedImagePath.value = '';
      imageUrl = '';
      wisata = '';
      name = '';
      description = '';
      price = '';

      Get.offNamed(RouteName.seller_page);
    }
  }

  Future editItem(String id, String imageUrl, String wisata, String name,
      String description, String price) async {
    var url = Uri.parse(baseURL + '/tiket/$id');
print(url);
    if (imageUrl == '' ||
        wisata == '' ||
        name == '' ||
        price == '' ||
        description == '') {
      snackBar(
        'WARNING',
        'Please fill the input field',
        bgColor,
        bgColor,
        Colors.redAccent,
      );
    } else {
      final response = await http
          .put(
        url,
        body: json.encode(
          {
            'imageUrl': imageUrl,
            'wisata': wisata,
            'name': name,
            'description': description,
            'price': price,
          },
        ),
      )
          .then(
            (response) {
              WisataModel selectWisata = selectedById(id);
              selectWisata.imageUrl = imageUrl;
              selectWisata.wisata = wisata;
              selectWisata.name = name;
              selectWisata.price = price;
              print(response);
          Get.offNamed(RouteName.seller_page);
        },
      ).then(
            (value) => snackBar(
          'SUCCESS',
          'Item edited',
          bgColor,
          bgColor,
          Colors.lightBlueAccent,
        ),
      );
    }
  }

  Future deleteItem(id) async {
    var url = Uri.parse(baseURL + '/tiket/$id');
    final response = await http.delete(url).then(
          (response) => wisataList.removeWhere((wisata) => wisata.id == id),
    );
  }

  Future initialData() async {
    var url = Uri.parse(baseURL + '/tiket');
    final response = await http.get(url);
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    // final dataResponse = json.decode(response.body) as Map<String, dynamic>;
print(data);
    data.forEach(
          (value) {
        wisataList.add(WisataModel(
          id: value['name'],
          imageUrl: value['imageUrl'],
          wisata: value['wisata'],
          name: value['name'],
          description: value['description'],
          price: value['price'],
          score: value['score'],
        ));
      },
    );
  }

  void snackBar(
      title,
      message,
      titleColor,
      messageColor,
      snackColor,
      ) {
    Get.snackbar(
      '',
      '',
      titleText: Text(
        title,
        style: openSans.copyWith(
            color: titleColor, fontWeight: bold, fontSize: 16),
      ),
      messageText: Text(
        message,
        style: openSans.copyWith(
          color: messageColor,
          fontWeight: medium,
        ),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: snackColor,
      animationDuration: Duration(milliseconds: 700),
      duration: Duration(milliseconds: 1500),
      margin: EdgeInsets.all(0),
      borderRadius: 0,
      isDismissible: true,
    );
  }
}
