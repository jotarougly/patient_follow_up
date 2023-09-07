import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/colors/app_colors.dart';
import '../../../core/const/strings_res.dart';
import '../../onboarding/page/onboarding_page.dart';
import '../widget/splashscreen_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const path = '/splash_screen';

  static Timer? _timer = Timer(const Duration(minutes: 5), () => {});

  void _initializeTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(const Duration(minutes: 5), () => _handleInactivity());
  }

  void _handleInactivity() {
    _timer?.cancel();
    _timer = null;

  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (c, child) => GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => _initializeTimer(),
          onPanDown: (_) => _initializeTimer(),
          onPanUpdate: (_) => _initializeTimer(),
          child: MaterialApp(
            theme: ThemeData(
                appBarTheme: AppBarTheme(
                  color: AppColors.white,
                )),
            debugShowCheckedModeBanner: false,
            title: StringsRes.appTitle,
            //theme: CustomTheme.lightTheme,
              home: AnimatedSplashScreen(
              duration: 5000,
              backgroundColor: AppColors.white,
              splash: const SplashScreenWidget(),
              nextScreen: const OnboardingPage(),
              splashIconSize: MediaQuery.of(context).size.height.w,
            ),
          )),
    );
  }
}
