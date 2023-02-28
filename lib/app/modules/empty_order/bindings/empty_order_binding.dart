import 'package:get/get.dart';

import '../controllers/empty_order_controller.dart';

class EmptyOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyOrderController>(
      () => EmptyOrderController(),
    );
  }
}
