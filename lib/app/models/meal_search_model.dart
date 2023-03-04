
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
        required this.strDrinkAlternate,
        required this.strCategory,
        required this.strArea,
        required this.strInstructions,
        required this.strMealThumb,
        required this.strTags,
        required this.strYoutube,
        required this.strIngredient1,
        required this.strIngredient2,
        required this.strIngredient3,
        required this.strIngredient4,
        required this.strIngredient5,
        required this.strIngredient6,
        required this.strIngredient7,
        required this.strIngredient8,
        required this.strIngredient9,
        required this.strIngredient10,
        required this.strIngredient11,
        required this.strIngredient12,
        required this.strIngredient13,
        required this.strIngredient14,
        required this.strIngredient15,
        required this.strIngredient16,
        required this.strIngredient17,
        required this.strIngredient18,
        required this.strIngredient19,
        required this.strIngredient20,
        required this.strMeasure1,
        required this.strMeasure2,
        required this.strMeasure3,
        required this.strMeasure4,
        required this.strMeasure5,
        required this.strMeasure6,
        required this.strMeasure7,
        required this.strMeasure8,
        required this.strMeasure9,
        required this.strMeasure10,
        required this.strMeasure11,
        required this.strMeasure12,
        required this.strMeasure13,
        required this.strMeasure14,
        required this.strMeasure15,
        required this.strSource,
        required this.strImageSource,
        required this.strCreativeCommonsConfirmed,
        required this.dateModified,
    });

    String idMeal;
    String strMeal;
    dynamic strDrinkAlternate;
    String strCategory;
    String strArea;
    String strInstructions;
    String strMealThumb;
    dynamic strTags;
    String strYoutube;
    String strIngredient1;
    String strIngredient2;
    String strIngredient3;
    String strIngredient4;
    String strIngredient5;
    String strIngredient6;
    String strIngredient7;
    String strIngredient8;
    String strIngredient9;
    String strIngredient10;
    String strIngredient11;
    String strIngredient12;
    String strIngredient13;
    String strIngredient14;
    String strIngredient15;
    dynamic strIngredient16;
    dynamic strIngredient17;
    dynamic strIngredient18;
    dynamic strIngredient19;
    dynamic strIngredient20;
    String strMeasure1;
    String strMeasure2;
    String strMeasure3;
    String strMeasure4;
    String strMeasure5;
    String strMeasure6;
    String strMeasure7;
    String strMeasure8;
    String strMeasure9;
    String strMeasure10;
    String strMeasure11;
    String strMeasure12;
    String strMeasure13;
    String strMeasure14;
    String strMeasure15;
    dynamic strSource;
    dynamic strImageSource;
    dynamic strCreativeCommonsConfirmed;
    dynamic dateModified;

    factory MealSearch.fromJson(Map<String, dynamic> json) => MealSearch(
        idMeal: json["idMeal"],
        strMeal: json["strMeal"],
        strDrinkAlternate: json["strDrinkAlternate"],
        strCategory: json["strCategory"],
        strArea: json["strArea"],
        strInstructions: json["strInstructions"],
        strMealThumb: json["strMealThumb"],
        strTags: json["strTags"],
        strYoutube: json["strYoutube"],
        strIngredient1: json["strIngredient1"],
        strIngredient2: json["strIngredient2"],
        strIngredient3: json["strIngredient3"],
        strIngredient4: json["strIngredient4"],
        strIngredient5: json["strIngredient5"],
        strIngredient6: json["strIngredient6"],
        strIngredient7: json["strIngredient7"],
        strIngredient8: json["strIngredient8"],
        strIngredient9: json["strIngredient9"],
        strIngredient10: json["strIngredient10"],
        strIngredient11: json["strIngredient11"],
        strIngredient12: json["strIngredient12"],
        strIngredient13: json["strIngredient13"],
        strIngredient14: json["strIngredient14"],
        strIngredient15: json["strIngredient15"],
        strIngredient16: json["strIngredient16"],
        strIngredient17: json["strIngredient17"],
        strIngredient18: json["strIngredient18"],
        strIngredient19: json["strIngredient19"],
        strIngredient20: json["strIngredient20"],
        strMeasure1: json["strMeasure1"],
        strMeasure2: json["strMeasure2"],
        strMeasure3: json["strMeasure3"],
        strMeasure4: json["strMeasure4"],
        strMeasure5: json["strMeasure5"],
        strMeasure6: json["strMeasure6"],
        strMeasure7: json["strMeasure7"],
        strMeasure8: json["strMeasure8"],
        strMeasure9: json["strMeasure9"],
        strMeasure10: json["strMeasure10"],
        strMeasure11: json["strMeasure11"],
        strMeasure12: json["strMeasure12"],
        strMeasure13: json["strMeasure13"],
        strMeasure14: json["strMeasure14"],
        strMeasure15: json["strMeasure15"],
        strSource: json["strSource"],
        strImageSource: json["strImageSource"],
        strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"],
        dateModified: json["dateModified"],
    );

    Map<String, dynamic> toJson() => {
        "idMeal": idMeal,
        "strMeal": strMeal,
        "strDrinkAlternate": strDrinkAlternate,
        "strCategory": strCategory,
        "strArea": strArea,
        "strInstructions": strInstructions,
        "strMealThumb": strMealThumb,
        "strTags": strTags,
        "strYoutube": strYoutube,
        "strIngredient1": strIngredient1,
        "strIngredient2": strIngredient2,
        "strIngredient3": strIngredient3,
        "strIngredient4": strIngredient4,
        "strIngredient5": strIngredient5,
        "strIngredient6": strIngredient6,
        "strIngredient7": strIngredient7,
        "strIngredient8": strIngredient8,
        "strIngredient9": strIngredient9,
        "strIngredient10": strIngredient10,
        "strIngredient11": strIngredient11,
        "strIngredient12": strIngredient12,
        "strIngredient13": strIngredient13,
        "strIngredient14": strIngredient14,
        "strIngredient15": strIngredient15,
        "strIngredient16": strIngredient16,
        "strIngredient17": strIngredient17,
        "strIngredient18": strIngredient18,
        "strIngredient19": strIngredient19,
        "strIngredient20": strIngredient20,
        "strMeasure1": strMeasure1,
        "strMeasure2": strMeasure2,
        "strMeasure3": strMeasure3,
        "strMeasure4": strMeasure4,
        "strMeasure5": strMeasure5,
        "strMeasure6": strMeasure6,
        "strMeasure7": strMeasure7,
        "strMeasure8": strMeasure8,
        "strMeasure9": strMeasure9,
        "strMeasure10": strMeasure10,
        "strMeasure11": strMeasure11,
        "strMeasure12": strMeasure12,
        "strMeasure13": strMeasure13,
        "strMeasure14": strMeasure14,
        "strMeasure15": strMeasure15,
        "strSource": strSource,
        "strImageSource": strImageSource,
        "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed,
        "dateModified": dateModified,
    };
}
