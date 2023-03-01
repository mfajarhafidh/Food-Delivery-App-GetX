import 'package:get/get.dart';

import '../controllers/empty_history_controller.dart';

class EmptyHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyHistoryController>(
      () => EmptyHistoryController(),
    );
  }
}
