import 'package:get/get.dart';

enum RadioButtonProfile { doorDelivery, pickUp }

class CheckoutController extends GetxController {
  //TODO: Implement CheckoutController

  // RadioButtonProfile? _character = RadioButtonProfile.cardProfile;
  final Rx<RadioButtonProfile> character = RadioButtonProfile.doorDelivery.obs;
  void onClickRadio(val){
    if(val == RadioButtonProfile.doorDelivery){
    }
    else{
      
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
