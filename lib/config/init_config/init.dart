import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/service_base/init.dart';
import '../../core/utils/helpers/helpers.dart';

class InitApp {
  Future<void> setup() async {
    HttpOverrides.global = MyHttpOverrides(); // disable https for current

    _setLicenses();
    await _iniOpenBoxStore();
    await _initDependencies();
  }

  void _setLicenses() {
    LicenseRegistry.addLicense(() async* {
      final licence =
          await rootBundle.loadString('asset/fonts/google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], licence);
    });
  }

  Future<void> _iniOpenBoxStore() async {
  }

  Future<void> _initDependencies() async {
    Timer(const Duration(seconds: 2), () {
      initDependencies().then((value) async {

      });
    });
  }
}
