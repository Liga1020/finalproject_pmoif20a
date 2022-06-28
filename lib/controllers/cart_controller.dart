import 'dart:math';
import 'package:finalproject_pmoif20a_nurhakim/models/cart_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var currentIndex = 0.obs;
  var cartList = <CartModel>[].obs;

  int get jumlahCart => cartList.length;

  CartModel selectedById(String id) =>
      cartList.firstWhere((cart) => cart.id == id);

  var coffeePrice = 0.0.obs;
  var taxCharges = 0.0.obs;
  var grandTotalPrice = 0.0.obs;

  void addCart(imageUrl, coffee, name, price, item) {
    cartList.add(
      CartModel(
        id: Random().nextInt(999).toString(),
        imageUrl: imageUrl,
        coffee: coffee,
        name: name,
        price: price,
        item: item,
      ),
    );
    coffeePrice.value += int.parse(price);
    taxCharges.value = (coffeePrice.value * 0.10);
    grandTotalPrice.value = (coffeePrice.value + taxCharges.value);
  }

  void addMoreItem(String id, String price) {
    CartModel selectCart = selectedById(id);

    selectCart.item = selectCart.item + 1;

    coffeePrice.value += int.parse(price);
    taxCharges.value = (coffeePrice.value * 0.10);
    grandTotalPrice.value = (coffeePrice.value + taxCharges.value);
  }

  void removeItem(String id, String price) {
    CartModel selectCart = selectedById(id);
    selectCart.item = selectCart.item - 1;

    coffeePrice.value -= int.parse(price);
    taxCharges.value = (coffeePrice.value * 0.10);
    grandTotalPrice.value = (coffeePrice.value + taxCharges.value);

    if (selectCart.item < 1) {
      cartList.removeWhere((cart) => cart.id == id);
    }
  }

  void payNowDispose() {
    currentIndex.value = 0;
    // cara menghapus semua isi list
    cartList.removeWhere((element) => element.id == element.id);
  }
}
