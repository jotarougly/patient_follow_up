import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../config/themes/colors/app_colors.dart';
import '../../../core/const/consts.dart';
import '../../../core/const/image_uri.dart';
import '../../../core/const/strings_res.dart';
import '../../../core/utils/helpers/text_style_helper.dart';
import '../controller/patient_list_controller.dart';

class PatientListPage extends GetView<PatientListController> {
  const PatientListPage({Key? key}) : super(key: key);

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
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 7, 0),
                child: Column(
                  children: [
                    Container(
                      height: ScreenDimension.screenHeight * 0.05,
                      child: TextFormField(
                        controller: controller.password,
                        style: TextStyle(color: AppColors.black, fontSize: 13.sp, fontWeight: FontWeight.w600),
                        cursorColor: AppColors.black,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: AppColors.black),
                            hintText: StringsRes.inputSearchText,
                            fillColor: AppColors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: AppColors.white,
                                  width: 0.4,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: AppColors.white,
                                  width: 0.4,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: AppColors.white,
                                  width: 0.4,
                                )
                            ),
                            prefixIcon: Icon(Icons.search, color: AppColors.appThirdColor)
                        ),),
                    ),
                    Text(StringsRes.listPatientListWording, style: MyTextStyle.dashboardCategoryWording),
                  ],
                )
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: ScreenDimension.screenHeight,
                width: ScreenDimension.screenWidth,
                color: AppColors.white,
                child: Column(
                  children: [
                    Container(
                      height: ScreenDimension.screenHeight,
                      width: ScreenDimension.screenWidth,
                      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.ph,
                          SizedBox(
                            height: ScreenDimension.screenHeight * 0.9,
                            width: ScreenDimension.screenWidth,
                            child: ListView.builder(
                              itemBuilder: (context, position) {
                                return Card(
                                  color: AppColors.whiteSecondSoft,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex:3,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Ablao KAMALDFIN", style: TextStyle(fontSize: 22.0.sp, fontWeight: FontWeight.bold),),
                                              10.ph,
                                              Row(
                                                children: [
                                                  Text(StringsRes.dashboardPatientStateWording, style: TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w600),),
                                                  Text("Stable", style: TextStyle(fontSize: 20.0.sp,fontWeight: FontWeight.w600, color: Colors.green),)
                                                ],
                                              ),
                                              10.ph,
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(StringsRes.dashboardPatientBPMWording, style: TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w600),),
                                                          Text("60", style: TextStyle(fontSize: 15.0.sp,fontWeight: FontWeight.w600, color: Colors.green),)
                                                        ],)
                                                  ),
                                                  Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(StringsRes.dashboardPatientTemperatureWording, style: TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w600),),
                                                          Text("36", style: TextStyle(fontSize: 15.0.sp,fontWeight: FontWeight.w600, color: Colors.green),)
                                                        ],)
                                                  ),
                                                  Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(StringsRes.dashboardPatientMovedWording, style: TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w600),),
                                                          Text("3", style: TextStyle(fontSize: 15.0.sp,fontWeight: FontWeight.w600, color: Colors.green))
                                                        ],)
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            flex:1,
                                            child: Container(
                                              height: ScreenDimension.screenHeight * 0.10,
                                              width: ScreenDimension.screenWidth,
                                              padding: EdgeInsets.only(bottom: 20.h),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius: BorderRadius.circular(100.0),
                                                    child: Image.asset(
                                                      ImageUri.profil,
                                                      width: 50.0,
                                                      height: 50.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
