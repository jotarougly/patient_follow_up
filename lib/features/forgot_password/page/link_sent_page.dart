import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:patient_follow_up/features/forgot_password/controller/forgot_password_controller.dart';

import '../../../config/themes/colors/app_colors.dart';
import '../../../core/const/consts.dart';
import '../../../core/const/image_uri.dart';
import '../../../core/const/strings_res.dart';
import '../../../core/utils/helpers/text_style_helper.dart';



class LinkSentPage extends GetView<ForgotPasswordController> {
  const LinkSentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: AppColors.white,
            resizeToAvoidBottomInset: true,
            body: Stack(
              //alignment:new Alignment(x, y)
              children: <Widget>[
                Container(
                  height: ScreenUtil().screenHeight,
                  width: ScreenUtil().screenWidth,
                  child: Image.asset(
                    ImageUri.loginBackground,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: ScreenUtil().screenHeight,
                  width: ScreenUtil().screenWidth,
                  decoration: BoxDecoration(
                    //color: AppColors.appFourthColor.withOpacity(0.4),
                    color: AppColors.appFourthColor.withOpacity(0.4),
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
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: ScreenDimension.screenWidth * 0.08,
                            right: ScreenDimension.screenWidth * 0.08),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10.0.h),
                              child: Image.asset(
                                ImageUri.sentEmail,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(StringsRes.forgotPasswordEmailSentText,
                                  style: MyTextStyle.loginAppName
                              ),
                            ),
                            10.ph,
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(StringsRes.forgotPasswordEmailSentDescText,
                                  style: MyTextStyle.forgottenPasswordDesc
                              ),
                            ),
                            40.ph,
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
                                        StringsRes.forgotPasswordBackToLoginText,
                                        style: TextStyle(
                                            color: AppColors.appDarkBaseColor, fontSize: 18.sp, fontWeight: FontWeight.w600),
                                      ),
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
