import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailFoodController extends GetxController {
  //TODO: Implement DetailFoodController

  final Rx<Color> iconColor = Colors.black26.obs;
  void onClickButton() {
    if (iconColor.value == Colors.black26) {
      iconColor.value = Colors.redAccent;
    } else {
      iconColor.value = Colors.black26;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
