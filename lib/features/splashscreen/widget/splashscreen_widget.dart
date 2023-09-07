import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../core/const/image_uri.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width.w,
        height: 250.h,
        child: Lottie.asset(
          ImageUri.splashScreen,
          height: 250.h,
          width: 250.w,
          animate: true,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

