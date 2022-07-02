import 'dart:io';
import 'package:finalproject_pmoif20a_nurhakim/controllers/cart_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/controllers/wisata_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/controllers/users_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../themes/themes.dart';

class WisataCard extends StatelessWidget {
  final int index;
  WisataCard(this.index);

  @override
  Widget build(BuildContext context) {
    final wisataC = Get.find<WisataController>();
    final usersC = Get.find<UsersController>();
    final cartC = Get.put(CartController());

    var id = wisataC.wisataList[index].id;
    var user = usersC.user.value;

    return GestureDetector(
      onTap: () {
        Get.toNamed(
          (user == 'user') ? RouteName.detail_page : RouteName.editWisata_page,
          arguments: id,
        );
      },
      child: Container(
        width: 135,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Image
            Stack(
              children: [
                (wisataC.wisataList[index].imageUrl == '')
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/image_photo.png',
                    width: 211,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                )
                    : ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.file(
                    File(wisataC.wisataList[index].imageUrl),
                    width: 211,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                // Score
                Container(
                  width: 50,
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Color(0xff414141).withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Color(0xffD3A601),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '${wisataC.wisataList[index].score}',
                        style: rosarivo.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                // Delete
                (usersC.user == 'admin') ? Positioned(
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      wisataC.deleteItem(id).then(
                            (value) => wisataC.snackBar(
                          'SUCCESS',
                          'Item deleted',
                          bgColor,
                          bgColor,
                          Colors.redAccent,
                        ),
                      );
                    },
                    child: Container(
                      width: 50,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 6,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Color(0xff414141).withOpacity(0.5),
                      ),
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xffC94C4C),
                      ),
                    ),
                  ),
                ) : SizedBox(),
              ],
            ),
            SizedBox(height: 8),
            // Name
            Container(
              child: Text(
                wisataC.wisataList[index].name,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: rosarivo.copyWith(color: Colors.white, fontSize: 16),
              ),
            ),
            Spacer(),
            // Price
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.08),
              ),
              child: Row(
                children: [
                  SizedBox(width: 22),
                  Text(
                    '\Rp ${wisataC.wisataList[index].price}',
                    style: rosarivo.copyWith(
                      color: Colors.white,
                      fontWeight: semibold,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  // Button Add
                  GestureDetector(
                    onTap: () {
                      cartC.addCart(
                        wisataC.wisataList[index].imageUrl,
                        wisataC.wisataList[index].wisata,
                        wisataC.wisataList[index].name,
                        wisataC.wisataList[index].price,
                        1,
                      );
                      wisataC.snackBar(
                        'SUCCESS',
                        'Item added to cart',
                        bgColor,
                        bgColor,
                        primaryColor,
                      );
                    },
                    child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
