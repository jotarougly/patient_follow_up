import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const padding = EdgeInsets.symmetric(horizontal: 12);
abstract class ScreenDimension {
  static double get screenHeight => ScreenUtil().screenHeight;
  static double get screenWidth => ScreenUtil().screenWidth;

}



extension EmptyPadding on num{
  SizedBox get ph => SizedBox( height: toDouble());

  SizedBox get pw => SizedBox( width: toDouble());
}
