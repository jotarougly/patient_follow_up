import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/colors/app_colors.dart';

class MyTextStyle {
  static TextStyle textBold = TextStyle(
    color: AppColors.appBaseColor,
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textNormal = TextStyle(
    color: AppColors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle onboardingTextTitleLg = TextStyle(
    color: AppColors.white,
    fontSize: 35.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle onboardingTextSecondTitleLg = TextStyle(
    color: AppColors.onBoardingSecond,
    fontSize: 35.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle onboardingDescriptionText = TextStyle(
    color: AppColors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle loginAppName = TextStyle(
    color: AppColors.white,
    fontSize: 35.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle forgottenPassword = TextStyle(
    color: AppColors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.underline,
  );
  static TextStyle forgottenPasswordDesc = TextStyle(
    color: AppColors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle dashboardSearchPatientText = TextStyle(
    color: AppColors.white,
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle menuText = TextStyle(
    color: AppColors.appDarkBaseColor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle dashboardCategoryWording = TextStyle(
    color: AppColors.black,
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
  );
}