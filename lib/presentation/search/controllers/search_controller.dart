import 'package:food_delivery/infrastructure/data/services/search/search_service.dart';
import 'package:food_delivery/domain/search/meal_search_model.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class SearchController extends GetxController {

  RxBool isLoading = false.obs;
  RxList<Meal> searchMealItem = <Meal>[].obs;

  Future<void> getSearchMeals({required String searchFood}) async {
    isLoading.toggle();
    searchMealItem.clear();
    searchFood.toLowerCase();
    try {
      final responseSearch =
          await SearchService().getSearchMealsService(searchParams: searchFood);
      searchMealItem.addAll(responseSearch.meals);
      isLoading.toggle();
    } catch(e){
      isLoading.toggle();
      Get.snackbar('Error', e.toString());
    }
  }
}
