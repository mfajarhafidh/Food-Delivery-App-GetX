import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/payment/views/payment_view.dart';

import 'package:get/get.dart';

import '../../shared/color_theme_widget/color_theme_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  CheckoutController checkoutController = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: background,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {Get.back();},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Address details',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.transparent,
                        ),
                        child: Text(
                          "change",
                          style: TextStyle(fontSize: 16, color: deepOrange800),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    height: 14,
                                    child: const Text(
                                      "Marvis Ighedosa",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  Divider(
                                      color: Colors.grey[500],
                                      indent: 5,
                                      endIndent: 25),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    height: 14,
                                    child: const Text(
                                      "Km 5 refinery road oppsite",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  Divider(
                                      color: Colors.grey[500],
                                      indent: 5,
                                      endIndent: 25),
                                  Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    height: 14,
                                    child: const Text(
                                      "08572163546271",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Delivery method',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Obx(() => 
                            ListTile(
                              title: Row(
                                children: const [
                                  Text(
                                    "Door delivery",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.doorDelivery,
                                groupValue: checkoutController.character.value,
                                activeColor: MaterialStateColor.resolveWith(
                                    (states) => deepOrange800),
                                onChanged: (val) {
                                  checkoutController.onClickRadio(RadioButtonProfile.doorDelivery);
                                },
                              ),
                            ),),
                            Divider(
                                color: Colors.grey[500],
                                indent: 80,
                                endIndent: 30),
                            Obx(() => 
                            ListTile(
                              title: Row(
                                children: const [
                                  Text(
                                    "Pick up",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.pickUp,
                                groupValue: checkoutController.character.value,
                                activeColor: MaterialStateColor.resolveWith(
                                    (states) => deepOrange800),
                                onChanged: (val) {
                                  checkoutController.onClickRadio(RadioButtonProfile.pickUp);
                                },
                              ),
                            ),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '23,000',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.PAYMENT);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 70,
                                vertical: 25,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: deepOrange800,
                              ),
                              child: const Text(
                                "Proceed to payment",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
