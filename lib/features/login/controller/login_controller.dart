import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:patient_follow_up/features/forgot_password/page/forgot_password_page.dart';

import '../../home_base/page/home_base_page.dart';


class LoginController extends GetxController {

  late GlobalKey<FormState> loginFormKey;

  final email = TextEditingController();
  final password = TextEditingController();
  RxBool isPasswordError = false.obs;
  RxBool isEmailError = false.obs;
  RxBool showPassword = true.obs;
  RxString emailErrorMessage = "".obs;
  RxString passwordErrorMessage = "".obs;

  @override
  void onInit() {
    // Get.find<WebServiceStatus>().startListening();
    loginFormKey = GlobalKey<FormState>();
    super.onInit();
  }

  void manageDisplayedPassword(){
    print("toto");
    showPassword.value = !showPassword.value;
  }

  void validLoginForm() {
    emailErrorMessage.value = "";
    passwordErrorMessage.value = "";
    if (email.text.isEmpty) {
      emailErrorMessage.value = "Veuillez saisir l'email";
    }

    print("Email : ${email.text}");
    print("Password : ${password.text}");
    print("toto");
    /*final bool emailValid = EmailValidator.validate(email.text);

    print("emailValid = ${emailValid}");

    if (email.text.isNotEmpty && emailValid == false) {
      emailErrorMessage.value = "Le text saisir pour l'email n'est pas valide!";
    }*/

    if (password.text.isEmpty) {
      passwordErrorMessage.value = "Veuillez saisir le mot de passe";
    }

    if(email.text.isNotEmpty && password.text.isNotEmpty ){
      Get.offAll(() => const HomeBasePage());
    }
  }

  void goToForgetPassword(){
    Get.offAll(() => const ForgotPasswordPage());
  }


}