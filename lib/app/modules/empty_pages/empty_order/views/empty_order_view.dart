import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';

import 'package:get/get.dart';

import '../../../shares/button_widget/button_widget.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/empty_order_controller.dart';

class EmptyOrderView extends GetView<EmptyOrderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF5F5F8),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Image.asset('assets/img/btn_back.png')),
                  const SizedBox(
                      height: 30,
                      width: 300,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Orders",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Image.asset('assets/img/orders.png', color: Colors.black12),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "No Orders Yet",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Hit the orange button down",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const Text("below to Create an order",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const SizedBox(
                    height: 200,
                  ),
                  ButtonWidget(textTitle: "Start Ordering", screen: Routes.HOME)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
