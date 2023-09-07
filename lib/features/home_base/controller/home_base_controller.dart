import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class HomeBaseController extends GetxController {

  late GlobalKey<FormState> loginFormKey;

  final email = TextEditingController();
  final password = TextEditingController();
  RxBool isPasswordError = false.obs;
  RxBool isEmailError = false.obs;
  RxBool showPassword = false.obs;
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
    print("Email : ${email.text}");
    print("Password : ${password.text}");
    print("toto");
    if (email.text.isEmpty) {
      emailErrorMessage.value = "Veuillez saisir l'email";
    }else{
      emailErrorMessage.value = "";
    }
    if (password.text.isEmpty) {
      passwordErrorMessage.value = "Veuillez saisir le mot de passe";
    }else{
      passwordErrorMessage.value = "";
    }

    if(email.text.isNotEmpty && password.text.isNotEmpty){
      //Get.offAll(() => const LoginPage());
    }
  }


}