import 'package:meta/meta.dart';
import 'dart:convert';

SearchMealsModel searchMealsModelFromJson(String str) => SearchMealsModel.fromJson(json.decode(str));

String searchMealsModelToJson(SearchMealsModel data) => json.encode(data.toJson());

class SearchMealsModel {
    SearchMealsModel({
        required this.meals,
    });

    List<MealSearch> meals;

    factory SearchMealsModel.fromJson(Map<String, dynamic> json) => SearchMealsModel(
        meals: List<MealSearch>.from(json["meals"].map((x) => MealSearch.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
    };
}

class MealSearch {
    MealSearch({
        required this.idMeal,
        required this.strMeal,
        required this.strMealThumb,
    });

    String idMeal;
    String strMeal;
    String strMealThumb;

    factory MealSearch.fromJson(Map<String, dynamic> json) => MealSearch(
        idMeal: json["idMeal"],
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"],
    );

    Map<String, dynamic> toJson() => {
        "idMeal": idMeal,
        "strMeal": strMeal,
        "strMealThumb": strMealThumb,
    };
}
