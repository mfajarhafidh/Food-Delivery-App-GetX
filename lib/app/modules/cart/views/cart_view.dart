import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery/app/modules/checkout/views/checkout_view.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';

import 'package:get/get.dart';

import '../../../../shares/button_widget/button_widget.dart';
import '../../../../shares/color_theme_widget/color_theme_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  List<MyModel> models = [
    MyModel(name: 'product1', image: 'assets/img/food1.png', price: 215.80),
    MyModel(name: 'product2', image: 'assets/img/food1.png', price: 415.30),
    MyModel(name: 'product3', image: 'assets/img/food1.png', price: 115.50),
    MyModel(name: 'product5', image: 'assets/img/food1.png', price: 115.50),
    MyModel(name: 'product4', image: 'assets/img/food1.png', price: 115.50),
    MyModel(name: 'product6', image: 'assets/img/food1.png', price: 115.50),
    MyModel(name: 'product7', image: 'assets/img/food1.png', price: 115.50),
    MyModel(name: 'product8', image: 'assets/img/food1.png', price: 115.50),
    MyModel(name: 'product9', image: 'assets/img/food1.png', price: 115.50),
    MyModel(name: 'product10', image: 'assets/img/food1.png', price: 115.50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: background,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (() {Get.toNamed(Routes.HOME);}),
          color: Colors.black,
        ),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: models.length,
                itemBuilder: ((context, index) {
                  final model = models[index];
                  return Column(
                    children: [
                      Slidable(
                        // Specify a key if the Slidable is dismissible.
                        key: const ValueKey(0),
                        // The end action pane is the one at the right or the bottom side.
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            CustomSlidableAction(
                                padding: const EdgeInsets.only(left: 15),
                                onPressed: ((context) {}),
                                child: CircleAvatar(
                                  radius: 26,
                                  backgroundColor: deepOrange800,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.favorite),
                                    color: Colors.white,
                                  ),
                                )),
                            CustomSlidableAction(
                                padding: const EdgeInsets.only(right: 30),
                                onPressed: ((context) {}),
                                child: CircleAvatar(
                                  radius: 26,
                                  backgroundColor: deepOrange800,
                                )),
                          ],
                        ),
                        child: buildListTile(model),
                      ),
                    ],
                  );
                })),
          ),
          ButtonWidget(textTitle: 'Complete order', screen: Routes.CHECKOUT),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }

  Widget buildListTile(MyModel model) => ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(model.image),
        ),
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  model.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  model.price.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.add),
        onTap: () {},
      );
}

class MyModel {
  final String name;
  final String image;
  final double price;

  MyModel({
    required this.name,
    required this.image,
    required this.price,
  });
}
