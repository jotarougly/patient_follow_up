import 'package:get/get.dart';
import 'package:patient_follow_up/features/dashboard/controller/dashboard_controller.dart';

import '../../features/forgot_password/controller/forgot_password_controller.dart';
import '../../features/home_base/controller/home_base_controller.dart';
import '../../features/login/controller/login_controller.dart';
import '../../features/onboarding/controller/onboarding_controller.dart';
import '../../features/patient_list/controller/patient_list_controller.dart';
import '../../features/splashscreen/controller/splashscreen_controller.dart';


Future<void> initDependencies() async {
  await _registerService();
  _registerControllers();
  _registerRepositories();
}

Future<void> _registerService() async {
  //await Get.putAsync(() => WebServiceStatus().init());
}

void _registerControllers() {
  Get.lazyPut<SplashScreenController>(() => SplashScreenController(), fenix: true);
  Get.lazyPut<OnboardingController>(() => OnboardingController(), fenix: true);
  Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
  Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController(), fenix: true);
  Get.lazyPut<HomeBaseController>(() => HomeBaseController(), fenix: true);
  Get.lazyPut<DashboardController>(() => DashboardController(), fenix: true);
  Get.lazyPut<PatientListController>(() => PatientListController(), fenix: true);
}

void _registerRepositories() {}
