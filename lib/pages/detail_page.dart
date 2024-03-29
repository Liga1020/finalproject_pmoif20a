import 'dart:io';
import 'package:finalproject_pmoif20a_nurhakim/controllers/cart_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/controllers/wisata_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wisataC = Get.find<WisataController>();
    final cartC = Get.find<CartController>();

    var wisataId = Get.arguments as String;
    final selectWisata = wisataC.selectedById(wisataId);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey,
                image: (selectWisata.imageUrl == '')
                    ? DecorationImage(
                        image: AssetImage('assets/image_photo.png'),
                        fit: BoxFit.cover,
                      )
                    : DecorationImage(
                        image: FileImage(
                          File(selectWisata.imageUrl),
                        ),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Positioned(
              top: 24,
              left: 10,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.25),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget detail() {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Coffee Type
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectWisata.wisata,
                    style: rosarivo.copyWith(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Color(0xffC94C4C),
                    size: 35,
                  ),
                ],
              ),
            ),
            //  Name
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Text(
                    selectWisata.name,
                    style: rosarivo.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffD3A601),
                        size: 18,
                      ),
                      SizedBox(width: 8),
                      Text(
                        selectWisata.score.toString(),
                        style: rosarivo.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Description
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Text(
                selectWisata.description,
                style: openSans.copyWith(
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ],
        ),
      );
    }

    Widget price() {
      return Container(
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            // Price
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: openSans.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 9),
                  Text(
                    '\Rp-${selectWisata.price}',
                    style: openSans.copyWith(
                      color: Colors.white,
                      fontWeight: semibold,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 30),
            // Button
            Expanded(
              child: Container(
                height: 45,
                child: TextButton(
                  onPressed: () {
                    cartC.addCart(selectWisata.imageUrl, selectWisata.wisata,
                        selectWisata.name, selectWisata.price, 1);
                    wisataC.snackBar(
                      'SUCCESS',
                      'Item added to cart',
                      bgColor,
                      bgColor,
                      primaryColor,
                    );
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    'BUY NOW',
                    style: openSans.copyWith(
                      color: bgColor,
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            detail(),
            Spacer(),
            price(),
          ],
        ),
      ),
    );
  }
}
