import 'package:food_delivery/app/models/meal_search_model.dart';
import 'package:get/get.dart';

class SearchService {
  final _connect = Get.find<GetConnect>();

  Future<SearchMealsModel> getSearchMeals() async {
    final response = await _connect.get('1/search.php?s=',
        decoder: (data) => SearchMealsModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}