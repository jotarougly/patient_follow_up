import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../features/splashscreen/page/splashscreen.dart';
import '../themes/themes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      theme: light,
      home: const SplashScreen(),
      localizationsDelegates: const [
        DefaultWidgetsLocalizations.delegate,
      ],
    );
  }
}