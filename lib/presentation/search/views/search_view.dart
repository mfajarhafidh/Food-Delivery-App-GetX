import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/shared/color_theme_widget/color_theme_widget.dart';

import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

import '../controllers/search_controller.dart';
import '../widgets/food_card_search_widget.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: background,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
            autofocus: true,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (value) =>
                controller.getSearchMeals(searchFood: value),
          ),
        ),
      ),
      body: Obx(() => controller.isLoading.value
          ? SkeletonListView()
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 30,
                    margin: const EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: Text(
                        "Found ${controller.searchMealItem.length} Result",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 45.0,
                      top: 160.0,
                    ),
                    child: GridView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: controller.searchMealItem.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 50, crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return FoodCard(
                          title: controller.searchMealItem[index].strMeal
                              .toString(),
                          imageUrl: controller
                              .searchMealItem[index].strMealThumb
                              .toString(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )),
    );
  }
}
