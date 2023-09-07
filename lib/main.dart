import 'dart:io';

import 'package:flutter/material.dart';

import 'config/init_config/app.dart';
import 'config/init_config/init.dart';
import 'core/utils/helpers/helpers.dart';

void main() async {
  InitApp().setup();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const App());
}