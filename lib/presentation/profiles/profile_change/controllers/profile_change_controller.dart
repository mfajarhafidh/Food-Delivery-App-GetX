import 'package:get/get.dart';

enum RadioButtonProfile { cardProfile, bankAccountProfile, paypalProfile }

class ProfileChangeController extends GetxController {
  Rx<RadioButtonProfile> character = RadioButtonProfile.cardProfile.obs;

  void onClickProfile(value){
    character.value = value;
  }
}
