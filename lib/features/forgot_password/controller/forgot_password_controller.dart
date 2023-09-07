import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:patient_follow_up/features/forgot_password/page/link_sent_page.dart';

import '../../home_base/page/home_base_page.dart';
import '../../login/page/login_page.dart';


class ForgotPasswordController extends GetxController {

  late GlobalKey<FormState> forgetPasswordFormKey;

  final email = TextEditingController();
  RxBool isEmailError = false.obs;
  RxString emailErrorMessage = "".obs;

  @override
  void onInit() {
    // Get.find<WebServiceStatus>().startListening();
    forgetPasswordFormKey = GlobalKey<FormState>();
    super.onInit();
  }

  void manageDisplayedPassword(){
    print("toto");
  }

  void validateForm() {
    emailErrorMessage.value = "";
    if (email.text.isEmpty) {
      emailErrorMessage.value = "Veuillez saisir l'email";
    }

    print("Email : ${email.text}");
    print("toto");
    final bool emailValid = EmailValidator.validate(email.text);

    print("emailValid = ${emailValid}");

    if (email.text.isNotEmpty && emailValid == false) {
      emailErrorMessage.value = "Le text saisir pour l'email n'est pas valide!";
    }


    if(email.text.isNotEmpty && emailValid){
      Get.offAll(() => const LinkSentPage());
    }
  }

  void goToLogin(){
    Get.offAll(() => const LoginPage());
  }


}