import 'dart:convert';

SearchMealsModel searchMealsModelFromJson(String str) =>
    SearchMealsModel.fromJson(json.decode(str));

class SearchMealsModel {
  SearchMealsModel({
    required this.meals,
  });

  List<Meal> meals;

  factory SearchMealsModel.fromJson(Map<String, dynamic> json) =>
      SearchMealsModel(
        meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
      );
}

class Meal {
  Meal({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });

  String strMeal;
  String strMealThumb;
  String idMeal;

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"],
        idMeal: json["idMeal"],
      );
}
