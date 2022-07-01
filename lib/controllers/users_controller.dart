import 'package:finalproject_pmoif20a_nurhakim/routes/routes_name.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  var user = ''.obs;

  void signIn(username, password) {
    if (username == 'admin' && password == 'admin') {
      user.value = 'admin';
      Get.toNamed(RouteName.seller_page);
    } else if (username == 'user' && password == 'user') {
      user.value = 'user';
      Get.toNamed(RouteName.main_page);
    } else {
      Get.defaultDialog(
        title: 'Username Salah',
        middleText: 'Username Tidak Ada',
      );
    }
  }
}
