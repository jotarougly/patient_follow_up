import 'package:flutter/material.dart';

import '../../../config/themes/colors/app_colors.dart';
import '../widget/onboarding_content.dart';



class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

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
          body: const OnboardingContent(),
        ),
      ),
    );
  }
}
