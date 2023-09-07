

import 'dart:io';

class Breakpoint {
  static const String ms = 'MobileSmall';
  static const String mm = 'MobileMedium';
  static const String ml = 'MobileLarge';
  static const String t = 'Tablet';
  static const String l = 'Laptop';
  static const String xl = 'xLaptop';
  static const String ll = 'LaptopLarge';
  static const String lxl = 'LaptopXLarge';
  static const String l4k = '4k';

  const Breakpoint._();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
