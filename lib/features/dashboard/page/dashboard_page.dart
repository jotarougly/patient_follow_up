import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../config/themes/colors/app_colors.dart';
import '../../../core/const/consts.dart';
import '../../../core/const/image_uri.dart';
import '../../../core/const/strings_res.dart';
import '../../../core/utils/helpers/text_style_helper.dart';
import '../controller/dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);


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
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: ScreenDimension.screenHeight,
                width: ScreenDimension.screenWidth,
                color: AppColors.white,
                child: Column(
                  children: [
                    Container(
                      height: ScreenDimension.screenHeight * 0.25,
                      width: ScreenDimension.screenWidth,
                      padding: EdgeInsets.only(left: 10.w, right: 10.w,bottom: 15.h),
                      decoration: BoxDecoration(
                        color: AppColors.appThirdColor,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.appDarkBlue.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset:
                            const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: ScreenDimension.screenHeight * 0.08,
                            width: ScreenDimension.screenWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                /*IconButton(
                                  icon: ImageIcon(
                                    AssetImage(ImageUri.menuHotdog),
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),*/
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
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(StringsRes.dashboardSearchPatient, style: MyTextStyle.dashboardSearchPatientText,),
                              15.ph,
                              SizedBox(
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
                            ],
                          )
                        ],
                      ),
                    ),
                    10.ph,
                    Container(
                      height: ScreenDimension.screenHeight * 0.23,
                      width: ScreenDimension.screenWidth,
                      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(StringsRes.dashboardCategoriesWording, style: MyTextStyle.dashboardCategoryWording),
                          10.ph,
                          Container(
                            width: ScreenDimension.screenWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: ScreenUtil().setHeight(100),
                                  width: ScreenUtil().setWidth(70),
                                  padding: EdgeInsets.only(bottom: 10.h, left: 3.w, right: 3.w),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    border: Border.all(
                                      color: AppColors.appBaseColor,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.appDarkBlue.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: ScreenDimension.screenHeight * 0.08,
                                        width: ScreenDimension.screenWidth,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(100.0),
                                              child: Container(
                                                padding: EdgeInsets.all(5.0.sp),
                                                decoration: BoxDecoration(
                                                  color: AppColors.appBaseColor,
                                                  border: Border.all(
                                                    color: AppColors.appBaseColor,
                                                  ),
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
                                                child: Icon(Icons.dangerous, color: AppColors.white,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text("Critique", textAlign: TextAlign.center, style: TextStyle(color: AppColors.appBaseColor,fontSize: 15.sp, fontWeight: FontWeight.w600),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: ScreenUtil().setHeight(100),
                                  width: ScreenUtil().setWidth(70),
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    border: Border.all(
                                      color: AppColors.black.withOpacity(0.4),
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: ScreenDimension.screenHeight * 0.08,
                                        width: ScreenDimension.screenWidth,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(100.0),
                                              child: Container(
                                                padding: EdgeInsets.all(5.0.sp),
                                                decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  border: Border.all(
                                                    color: AppColors.black.withOpacity(0.4),
                                                  ),
                                                  borderRadius: const BorderRadius.all(
                                                      Radius.circular(30)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: AppColors.black.withOpacity(0.4),
                                                      spreadRadius: 3,
                                                      blurRadius: 3,
                                                      offset: const Offset(
                                                          0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Icon(Icons.warning, color: AppColors.black,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text("Instable", textAlign: TextAlign.center, style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: ScreenUtil().setHeight(100),
                                  width: ScreenUtil().setWidth(70),
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    border: Border.all(
                                      color: AppColors.black.withOpacity(0.4),
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: ScreenDimension.screenHeight * 0.08,
                                        width: ScreenDimension.screenWidth,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(100.0),
                                              child: Container(
                                                padding: EdgeInsets.all(5.0.sp),
                                                decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  border: Border.all(
                                                    color: AppColors.black.withOpacity(0.4),
                                                  ),
                                                  borderRadius: const BorderRadius.all(
                                                      Radius.circular(30)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: AppColors.black.withOpacity(0.4),
                                                      spreadRadius: 3,
                                                      blurRadius: 3,
                                                      offset: const Offset(
                                                          0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Icon(Icons.check_circle, color: AppColors.black,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text("Stable", style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: ScreenUtil().setHeight(100),
                                  width: ScreenUtil().setWidth(70),
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    border: Border.all(
                                      color: AppColors.black.withOpacity(0.4),
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: ScreenDimension.screenHeight * 0.08,
                                        width: ScreenDimension.screenWidth,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(100.0),
                                              child: Container(
                                                padding: EdgeInsets.all(5.0.sp),
                                                decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  border: Border.all(
                                                    color: AppColors.black.withOpacity(0.4),
                                                  ),
                                                  borderRadius: const BorderRadius.all(
                                                      Radius.circular(30)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: AppColors.black.withOpacity(0.4),
                                                      spreadRadius: 3,
                                                      blurRadius: 3,
                                                      offset: const Offset(
                                                          0, 3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Icon(Icons.home, color: AppColors.black,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text("À Libérer", style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),)
                                    ],
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenDimension.screenHeight * 0.50,
                      width: ScreenDimension.screenWidth,
                      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(StringsRes.dashboardPatientListWording, style: MyTextStyle.dashboardCategoryWording),
                          10.ph,
                          SizedBox(
                            height: ScreenDimension.screenHeight * 0.40,
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
