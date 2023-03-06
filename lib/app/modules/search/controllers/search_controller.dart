import 'package:food_delivery/app/data/search_service.dart';
import 'package:food_delivery/app/models/meal_search_model.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  // RxBool isLoading = false.obs;
  // RxList<MealSearch> searchMealItem = <MealSearch>[].obs;
  // final mealSearchService = SearchService();

  RxBool isLoading = false.obs;
  RxList<MealSearch> listFood = <MealSearch>[].obs;
  final mealSearchService = SearchService();
  var searchList = <MealSearch>[].obs;

  @override
  void onInit() {
    super.onInit();
    getSearchMeals();
    // searchController.addListener(() {
    //   searchParams.value = searchController.text;
    // });

    // debounce(searchParams, (_) {
    //   print("debounce $_");
    // }, time: Duration(seconds: 1));
  }

  getSearchMeals() async {
    isLoading(true);
    try {
      // SearchMealsModel responseSearch =
      //     await mealSearchService.getSearchMeals(searchParams: searchParams.value);
       SearchMealsModel responseSearch =
          await mealSearchService.getSearchMeals();
        listFood.addAll(responseSearch.meals);
      isLoading(false);
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }

  void onTextChanged(String text) {
    searchList.clear();
    if (text.isEmpty) {
      for (var element in listFood) {
        searchList.add(element);
      }
    } else {
      for (var element in listFood) {
        if (element.strMeal.toLowerCase().contains(text)) {
          searchList.add(element);
        }
        searchList.refresh();
      }
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
