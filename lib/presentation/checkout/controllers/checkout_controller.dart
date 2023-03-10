import 'package:get/get.dart';

enum RadioButtonProfile { doorDelivery, pickUp }

class CheckoutController extends GetxController {

  Rx<RadioButtonProfile> character = RadioButtonProfile.doorDelivery.obs;

  void onClickRadio(value){
    character.value = value;
  }
}
