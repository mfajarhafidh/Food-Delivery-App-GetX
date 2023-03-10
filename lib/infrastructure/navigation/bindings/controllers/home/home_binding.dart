import 'package:food_delivery/infrastructure/navigation/bindings/domains/home/meal_repository_binding.dart';
import 'package:get/get.dart';

import '../../../../../presentation/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    final mealRepositoryBinding = MealRepositoryBinding();
    Get.lazyPut<HomeController>(
      () => HomeController(mealRepository: mealRepositoryBinding.repository),
    );
  }
}
