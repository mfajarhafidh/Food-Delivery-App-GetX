import 'package:get/get.dart';

enum PaymentGroup { card, bankAccount }

enum DeliveryGroup { doorDelivery, pickUp }

class PaymentController extends GetxController {

  Rx<PaymentGroup> char = PaymentGroup.card.obs;
  Rx<DeliveryGroup> group = DeliveryGroup.doorDelivery.obs;

  void onClickPayment(value){
    char.value = value;
  }

  void onClickDelivery(value){
    group.value = value;
  }
}
