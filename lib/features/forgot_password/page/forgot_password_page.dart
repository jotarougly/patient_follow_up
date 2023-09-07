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



class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(StringsRes.forgotPasswordText,
                                  style: MyTextStyle.loginAppName
                              ),
                            ),
                            20.ph,
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(StringsRes.forgotPasswordDescriptionText,
                                  style: MyTextStyle.forgottenPasswordDesc
                              ),
                            ),
                            60.ph,
                            Obx((){
                              return Container(
                                child: Form(
                                  key: controller.forgetPasswordFormKey,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFormField(
                                        controller: controller.email,
                                        style: TextStyle(color: AppColors.white, fontSize: 17.sp, fontWeight: FontWeight.w600),
                                        cursorColor: AppColors.white,
                                        decoration: InputDecoration(
                                            hintText: "Email",
                                            hintStyle: TextStyle(color: AppColors.white),
                                            border: OutlineInputBorder( //Outline border type for TextFeild
                                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                borderSide: BorderSide(
                                                  color: AppColors.white,
                                                  width: 0.4,
                                                )
                                            ),
                                            enabledBorder: OutlineInputBorder( //Outline border type for TextFeild
                                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                borderSide: BorderSide(
                                                  color: AppColors.white,
                                                  width: 0.4,
                                                )
                                            ),
                                            focusedBorder: OutlineInputBorder( //Outline border type for TextFeild
                                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                borderSide: BorderSide(
                                                  color: AppColors.white,
                                                  width: 0.4,
                                                )
                                            ),
                                            prefixIcon: Icon(Icons.account_circle, color: AppColors.white)
                                        ),),
                                      Text(controller.emailErrorMessage.value, style: TextStyle(color: AppColors.white, fontSize: 15.sp)),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            40.ph,
                            ElevatedButton(
                              onPressed: () {
                                controller.validateForm();
                              },
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(30),
                                  maximumSize: const Size.fromHeight(30) * 2,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.0.w, vertical: 10.0.h),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0.h),
                                      side: BorderSide(
                                          width: 5.0.sp, color: AppColors.white)),
                                  backgroundColor: AppColors.white),
                              child: Text(
                                StringsRes.onbordingGetStart,
                                style: TextStyle(
                                    color: AppColors.appDarkBaseColor, fontSize: 18.sp, fontWeight: FontWeight.w600),
                              ),
                            ),
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
