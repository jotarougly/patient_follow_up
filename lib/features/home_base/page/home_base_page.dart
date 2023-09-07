import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:patient_follow_up/config/themes/colors/app_colors.dart';
import 'package:patient_follow_up/core/const/strings_res.dart';
import 'package:patient_follow_up/core/utils/helpers/text_style_helper.dart';
import 'package:patient_follow_up/features/dashboard/page/dashboard_page.dart';
import 'package:patient_follow_up/features/patient_list/page/patient_list_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../controller/home_base_controller.dart';

class HomeBasePage extends GetView<HomeBaseController> {
  const HomeBasePage({Key? key}) : super(key: key);

  List<Widget> _buildScreens() {
    return [
      const DashboardPage(),
      const PatientListPage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: (StringsRes.menuDashboardText),
        textStyle: MyTextStyle.menuText,
        activeColorPrimary: AppColors.appDarkBaseColor,
        inactiveColorPrimary: AppColors.appBaseColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.list_bullet),
        title: (StringsRes.menuPatientListText),
        textStyle: MyTextStyle.menuText,
        activeColorPrimary: AppColors.appDarkBaseColor,
        inactiveColorPrimary: AppColors.appBaseColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;
    controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: false,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}