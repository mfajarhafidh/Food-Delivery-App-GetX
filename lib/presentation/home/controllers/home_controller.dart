import 'package:flutter/material.dart';
import 'package:food_delivery/domain/list_meal/meal_repository.dart';
import 'package:food_delivery/infrastructure/data/services/list_meal/meal_service.dart';
import 'package:food_delivery/domain/list_meal/meal_model.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeController extends GetxController {
  
  GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();

  RxBool isLoading = false.obs;
  RxList<Meal> listMeal = <Meal>[].obs;
  MealService mealService = MealService();

  final MealRepository _mealRepository;

  HomeController({required MealRepository mealRepository})
    : _mealRepository = mealRepository;
  
  void toggleMenu() {
     if (sideMenuKey.currentState!.isOpened){
      sideMenuKey.currentState!.closeSideMenu();
    } else {
      sideMenuKey.currentState!.openSideMenu();
    }
  }

  @override
  Future<void> onInit() async{
    super.onInit();
    try{
      isLoading.toggle();
      final response = await _mealRepository.getMeals();
      listMeal.addAll(response.meals);
    } catch(e){
      Get.snackbar("Error", e.toString());
    } finally{
      isLoading.toggle();
    }
  }

  // @override
  // void onInit() {
  //   super.onInit();
  //   getListMeals();
  //   Logger().d(getListMeals());
  // }

  // Future<void> getListMeals() async{
  //   isLoading(true);
  //   try{
  //     var response = await mealService.getMeals();
  //     listMeal.addAll(response.meals);
  //     isLoading(false);
  //   }
  //   catch(e){
  //     isLoading(false);
  //     Get.snackbar('Error', e.toString());
  //   }
  // }
}
