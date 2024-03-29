import 'package:finalproject_pmoif20a_nurhakim/pages/seller/add_wisata.dart';
import 'package:get/get.dart';
import 'routes_name.dart';
import '../pages/front_page.dart';
import '../pages/seller/edit_wisata.dart';
import '../pages/detail_page.dart';
import '../pages/main_page.dart';
import '../pages/seller/seller_page.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RouteName.front_page,
      page: () => FrontPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RouteName.main_page,
      page: () => MainPage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: RouteName.seller_page,
      page: () => SellerPage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: RouteName.detail_page,
      page: () => DetailPage(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: RouteName.addWisata_page,
      page: () => AddWisata(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: RouteName.editWisata_page,
      page: () => EditWisata(),
      transition: Transition.downToUp,
    ),
  ];
}
