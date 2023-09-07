import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:patient_follow_up/core/const/consts.dart';

import '../../../config/themes/colors/app_colors.dart';
import '../../../core/const/image_uri.dart';
import '../../../core/const/strings_res.dart';
import '../../../core/utils/helpers/text_style_helper.dart';
import '../controller/onboarding_controller.dart';

class OnboardingContent extends GetView<OnboardingController> {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.appBaseColor,
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: Stack(
                  //alignment:new Alignment(x, y)
                  children: <Widget>[
                    Container(
                      height: ScreenUtil().setHeight(180),
                      width: ScreenUtil().screenWidth,
                      margin: EdgeInsets.only(top: ScreenUtil().setHeight(120)),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: const BorderRadius.all(
                            Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.appDarkBlue.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.0.h),
                      child: Image.asset(
                        ImageUri.onboarding,
                      ),
                    ),
                  ],
                ),
              ),
              15.ph,
              Text(
                  StringsRes.onbordingWelcomText,
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  softWrap: true, style: MyTextStyle.onboardingTextTitleLg),
              Text(
                  StringsRes.appTitle,
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  softWrap: true,
                  style: MyTextStyle.onboardingTextSecondTitleLg),
              15.ph,
              Text(
                  StringsRes.onbordingDescriptionText,
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  softWrap: true, style: MyTextStyle.onboardingDescriptionText),
              25.ph,
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 10.w, right: 10.w, bottom: 30.h),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.goToLogin();
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            maximumSize: const Size.fromHeight(50) * 2,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0.w, vertical: 20.0.h),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0.h),
                                side: BorderSide(
                                    width: 5.0.sp, color: AppColors.white)),
                            backgroundColor: AppColors.white),
                        child: Text(
                          StringsRes.onbordingGetStart,
                          style: TextStyle(
                              color: AppColors.appDarkBaseColor, fontSize: 18.sp),
                        ),
                      )
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
