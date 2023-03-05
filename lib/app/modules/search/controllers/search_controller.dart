import 'package:flutter/widgets.dart';
import 'package:food_delivery/app/data/meal_detail_service.dart';
import 'package:food_delivery/app/data/search_service.dart';
import 'package:food_delivery/app/models/meal_search_model.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<MealSearch> searchMealItem = <MealSearch>[].obs;
  final mealSearchService = SearchService();

  final mealDetailService = MealDetailService();
  String idSearch = '';
  Rx<MealSearch?> detailMealSearch = MealSearch(strMeal: '').obs;

  final searchController = TextEditingController();
  RxString searchParams = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getSearchMeals();
    searchController.addListener(() {
      searchParams.value = searchController.text;
    });

    debounce(searchParams, (_) {
      print("debounce $_");
    }, time: Duration(seconds: 1));
  }

  getSearchMeals() async {
    isLoading(true);
    try {
      SearchMealsModel responseSearch =
          await mealSearchService.getSearchMeals(searchParams: searchParams.value);
      // if(searchParams.value.){
        searchMealItem.addAll(responseSearch.meals);
        // searchMealItem.addAll(responseSearch.meals);
      // } else{
        // searchMealItem.addIf(responseSearch.meals.isNotEmpty, detailMealSearch)
        // searchMealItem.addAllIf(detailMealSearch.value?.strMeal == searchParams.value, responseSearch.meals);
        // searchMealItem.addAll(responseSearch.meals);
      // }
      // searchMealItem.addAll(responseSearch.meals);
      // SearchMealsModel responseSearch = await mealSearchService.getSearchMeals(searchParams: searchController.text);
      // var res = responseSearch.meals[1];
      // detailMealSearch(res);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }

  // getDetailMealsItem() async{
  //   isLoading(true);
  //   try{
  //     DetailMealsModel response = await mealDetailService.getDetailMeals(id: id);
  //     var res = response.meals![0];
  //     detailMeal(res);
  //     isLoading(false);
  //   }
  //   catch(e){
  //     isLoading(false);
  //     print(e.toString());
  //     Get.snackbar('Error', e.toString());
  //   }
  // }
}
