import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/no_item_controller.dart';

class NoItemView extends GetView<NoItemController> {
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
                      onPressed: () {},
                      icon: Image.asset('assets/img/btn_back.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 30,
                      width: 300,
                      child: TextFormField(
                        style:
                            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        decoration: const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 175,
              ),
              Column(
                children: [
                  Image.asset('assets/img/search.png', color: Colors.black12),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Item Not Found",
                    style: 
                    TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Try searching the item with",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                  const Text("a different keyword.",
                      style: TextStyle(fontSize: 18, color: Colors.black26)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
