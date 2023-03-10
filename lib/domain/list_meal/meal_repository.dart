import 'package:food_delivery/domain/list_meal/meal_model.dart';
import 'package:food_delivery/infrastructure/data/services/list_meal/meal_service.dart';

class MealRepository{
  final MealService _mealService;

  MealRepository({required MealService mealService})
    : _mealService = mealService;

  Future<Meals> getMeals() async{
    try{
      final response = await _mealService.getMeals();
      Meals meals = response;
      return meals;
    } catch(e){
      rethrow;
    }
  }
}