import 'package:flutter/material.dart';
import 'package:food_delivery/app/data/meal_service.dart';
import 'package:food_delivery/app/models/meal_models.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeController extends GetxController {
  
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();

  RxBool isLoading = false.obs;
  RxList<Meal> listMeal = <Meal>[].obs;
  final mealService = MealService();
  
  void toggleMenu() {
     if (sideMenuKey.currentState!.isOpened){
      sideMenuKey.currentState!.closeSideMenu();
    } else {
      sideMenuKey.currentState!.openSideMenu();
    }
  }

  @override
  void onInit() {
    super.onInit();
    getListMeals();
  }

  getListMeals() async{
    isLoading(true);
    try{
      var response = await mealService.getMeals();
      listMeal.addAll(response.meals);
      isLoading(false);
    }
    catch(e){
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
