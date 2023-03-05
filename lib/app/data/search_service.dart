import 'package:food_delivery/app/models/meal_search_model.dart';
import 'package:get/get.dart';

class SearchService {
  final _connect = Get.find<GetConnect>();

  Future<SearchMealsModel> getSearchMeals(
      {required String searchParams}) async {
    // if (searchParams == '') {
    //   final response = await _connect.get('1/search.php?s=',
    //       decoder: (data) =>
    //           SearchMealsModel.fromJson(data as Map<String, dynamic>));
    //   if (!response.hasError) {
    //     return response.body!;
    //   } else {
    //     throw Get.snackbar('Error', response.statusCode.toString());
    //   }
    // } else {
    //   final response = await _connect.get('1/search.php?s=$searchParams',
    //       decoder: (data) =>
    //           SearchMealsModel.fromJson(data as Map<String, dynamic>));
    //   if (!response.hasError) {
    //     return response.body!;
    //   } else {
    //     throw Get.snackbar('Error', response.statusCode.toString());
    //   }
    // }

    // final response = await _connect.get('1/search.php?s=$searchParams',
    final response = await _connect.get('1/search.php?s=$searchParams',
          decoder: (data) =>
              SearchMealsModel.fromJson(data as Map<String, dynamic>));
      if (!response.hasError) {
        return response.body!;
      } else {
        throw Get.snackbar('Error', response.statusCode.toString());
      }
  }
}
