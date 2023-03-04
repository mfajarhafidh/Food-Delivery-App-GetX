import 'package:food_delivery/app/data/meal_detail_service.dart';
import 'package:food_delivery/app/data/search_service.dart';
import 'package:food_delivery/app/models/meal_detail_model.dart';
import 'package:food_delivery/app/models/meal_search_model.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<MealSearch> searchMealItem = <MealSearch>[].obs;
  final mealSearchService = SearchService();

  final mealDetailService = MealDetailService();
  String idSearch = '';
  Rx<Meal?> detailMealSearch = Meal(idMeal: '').obs;

  @override
  void onInit() {
    super.onInit();
    // final param = Get.arguments;
    // idSearch = param['id'];
    getSearchMeals();
    // getDetailMealsItem();
  }

  getSearchMeals() async{
    isLoading(true);
    try{
      SearchMealsModel responseSearch = await mealSearchService.getSearchMeals();
      // DetailMealsModel responseDetail = await mealDetailService.getDetailMeals(id: idSearch);
      // var res = responseDetail.meals![0];
      searchMealItem.addAll(responseSearch.meals);
      // detailMealSearch(res);
      isLoading(false);
    }
    catch(e){
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
