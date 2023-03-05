import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';
import '../widgets/food_card_search_widget.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: TextField(
                // onChanged: (value) => controller.searchMealItem(value),
                controller: controller.searchController,
                // onChanged: (valueSearch){
                //   if(controller.searchParams.isEmpty){
                //     debounce(controller.searchParams, (callback) => print(callback));
                //   } else{
                //     debounce(controller.searchParams, (callback) => print(callback));
                //   }
                // },
                // onChanged: (value) => controller.searchParams,
                // onSubmitted: (val) => controller.searchController.text,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: ""),
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Obx(() => Text(
                      "Found ${controller.searchMealItem.length} Result",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Obx(() => Container(
                  margin: EdgeInsets.only(left: 45, top: 120),
                  child: controller.isLoading.value == true
                      ? CircularProgressIndicator()
                      : GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          mainAxisSpacing: 50,
                          children: [
                            ...controller.searchMealItem.map((item) => Padding(
                                  padding: EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: FoodCard(
                                    imageUrl: item.strMealThumb!,
                                    title: item.strMeal!,
                                    idSearch: item.idMeal!,
                                  ),
                                ))
                          ],
                        ),
                )),
          ],
        ),
      ),
    );
  }

  _printLast() {
    print("Last val : ${controller.searchParams.value}");
  }
}
