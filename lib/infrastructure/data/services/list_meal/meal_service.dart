import 'package:food_delivery/domain/list_meal/meal_model.dart';
import 'package:get/get.dart';

class MealService {
  final _connect = Get.find<GetConnect>();

  String get _prefix => '1/filter.php?c=Seafood';

  Future<Meals> getMeals() async {
    final response = await _connect.get(_prefix,
        decoder: (data) => Meals.fromJson(data));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}