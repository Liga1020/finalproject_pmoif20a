import 'package:finalproject_pmoif20a_nurhakim/controllers/wisata_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/routes/routes_name.dart';
import 'package:finalproject_pmoif20a_nurhakim/themes/themes.dart';
import 'package:finalproject_pmoif20a_nurhakim/widgets/wisata_card.dart';
import 'package:finalproject_pmoif20a_nurhakim/widgets/empty_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wisataC = Get.put(WisataController());

    final List<String> imgList = [
      'http://1.bp.blogspot.com/-lLZS08knx2c/VUTvU--RhyI/AAAAAAAAABU/BEIJfxIEFIU/s1600/Natural-Beauty-Sunrise-in-Sikunir-Dieng-Central-Java-Amazing-Beautiful-Natural-Scenery.jpg',
      'http://1.bp.blogspot.com/-Soip-FVPDUI/UWZtxRLHNTI/AAAAAAAAFec/5Ys726n9zfU/s1600/Telaga+warna+dieng+-+Wonosobo,+Jawa+TImur.JPG',
      'https://cdn.antaranews.com/cache/800x533/2021/07/29/IMG-20210727-WA0008.jpg',
      'https://1.bp.blogspot.com/-fSAvypm80bk/Vhh6Cq4tc4I/AAAAAAAABC4/CgAiYwFAIKg/s1600/Mountain%2BPrau.jpg',
      'https://1.bp.blogspot.com/-KqnPn-mlOjQ/YAJg7te7GaI/AAAAAAAAHic/gO6Wca8hkCwKjDIa4JuAlBPQQUhcGb_NACLcBGAsYHQ/w400-h225/2017-06-29-5909.jpg',
      'https://4.bp.blogspot.com/-F98Cih5L2lE/WmNVhTncziI/AAAAAAAAAII/0Ip-3BAg_T0lShUvWwGFMPtqWexibtDtACEwYBhgL/s1600/2.JPG',
      'https://cdn-2.tstatic.net/travel/foto/bank/images/candi-arjuna_20170517_203312.jpg'
    ];

    Widget imageCarousel() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 3.0,
            enlargeCenterPage: true,
          ),
          items: imgList
              .map(
                (image) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    image,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              .toList(),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                wisataC.initialData();
              },
              child: Image.asset(
                'assets/image_logo.png',
                width: 100,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.dialog(
                  Center(
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: TextButton(
                        onPressed: () {
                          Get.offAllNamed(RouteName.front_page);
                        },
                        child: Text(
                          'Logout',
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
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: primaryColor,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/previews/000/378/133/non_2x/edit-profile-vector-icon.jpg',
                  ),
                  radius: 30,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget wisataTitle() {
      return Container(
        margin: EdgeInsets.only(
          left: 16,
          top: 24,
        ),
        child: Text(
          'Pilih Wisata Anda',
          style: rosarivo.copyWith(
            color: primaryColor,
            fontSize: 22,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget wisata() {
      return Obx(
        () => (wisataC.jumlahWisata == 0)
            ? EmptyList(size: 100)
            : Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 6.3 / 10,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: wisataC.jumlahWisata,
                  itemBuilder: (context, index) {
                    return WisataCard(index);
                  },
                ),
              ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            imageCarousel(),
            wisataTitle(),
            wisata(),
          ],
        ),
      ),
    );
  }
}
