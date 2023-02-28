import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailFoodController extends GetxController {
  //TODO: Implement DetailFoodController

  final count = 0.obs;
  final Rx<Color> iconColor = Color(0x42000000).obs;
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
  void increment() => count.value++;
}
