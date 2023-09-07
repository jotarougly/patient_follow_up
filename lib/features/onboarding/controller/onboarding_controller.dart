import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../login/page/login_page.dart';


class OnboardingController extends GetxController {

  List<ValueKey<int>> keys = [
    const ValueKey<int>(0),
    const ValueKey<int>(1),
    const ValueKey<int>(2)
  ];
  int sensitivity = 8;


  RxInt nextLevel = 0.obs;

  void updatePageToNextLevel() {
    if(nextLevel.value < 2) {
      nextLevel.value++;
    }
    if(nextLevel.value == 2){
      //
    }
  }

  void goToLogin(){
    Get.offAll(() => const LoginPage());
  }

  void updatePageToPreviousLevel() {
    if(nextLevel.value >= 0) {
      nextLevel.value--;
    }
  }


}