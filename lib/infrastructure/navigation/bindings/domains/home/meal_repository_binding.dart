import 'package:food_delivery/domain/list_meal/meal_repository.dart';
import 'package:food_delivery/infrastructure/data/services/list_meal/meal_service.dart';

class MealRepositoryBinding{
  late MealRepository _mealRepository;

  MealRepository get repository => _mealRepository;

  MealRepositoryBinding(){
    final mealService = MealService();
    _mealRepository = MealRepository(mealService: mealService);
  }
}