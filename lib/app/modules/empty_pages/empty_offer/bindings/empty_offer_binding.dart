import 'package:get/get.dart';

import '../controllers/empty_offer_controller.dart';

class EmptyOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyOfferController>(
      () => EmptyOfferController(),
    );
  }
}
