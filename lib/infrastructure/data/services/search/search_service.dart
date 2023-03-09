import 'package:food_delivery/domain/search/meal_search_model.dart';
import 'package:get/get.dart';

class SearchService {
  final _connect = Get.find<GetConnect>();

  Future<SearchMealsModel> getSearchMealsService({required String searchParams}) async {
    final response = await _connect.get('1/search.php?s=$searchParams',
          decoder: (data) =>
              SearchMealsModel.fromJson(data));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}
