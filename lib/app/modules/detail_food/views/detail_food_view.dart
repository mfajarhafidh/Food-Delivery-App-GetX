import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/cart/views/cart_view.dart';
import 'package:food_delivery/app/modules/shared/color_theme_widget/color_theme_widget.dart';

import 'package:get/get.dart';

import '../../shared/button_widget/button_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/detail_food_controller.dart';

class DetailFoodView extends GetView<DetailFoodController> {
  final detailfoodController = Get.put(DetailFoodController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Obx(() => ListTile(
                          trailing: IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: detailfoodController.iconColor.value,
                                ),
                                onPressed: () {
                                  detailfoodController.onClickButton();                                  
                                }),
                        ),),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 275,
                  width: 275,
                  child: Image.asset('assets/img/food_0.png'),
                ),
                const Text(
                  'Veggie tomato mix',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'N1,900',
                    style: TextStyle(
                        color: Color(0xffFA4A0C),
                        fontSize: 22,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 21.5),
                        child: const Text(
                          'Delivery info',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Text(
                          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm'),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text(
                          'Return policy',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Text(
                          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 50),
                        child: ButtonWidget(textTitle: "Add to cart", screen: Routes.CART),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
