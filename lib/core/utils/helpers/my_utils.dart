import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class MyUtils {

  static Map<String, dynamic> generatePKCE() {
    int leftLimit = 97;
    int rightLimit = 122;
    int targetStringLength = 10;
    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < targetStringLength; i++) {
      int randomLimitedInt = leftLimit +
          (Random().nextDouble() * (rightLimit - leftLimit + 1).toDouble())
              .toInt();
      buffer.write(String.fromCharCode(randomLimitedInt));
    }
    String generatedString = buffer.toString();
    var hash = sha256.convert(ascii.encode(generatedString)).bytes;
    StringBuffer hexString = StringBuffer();
    for (int i = 0; i < hash.length; i++) {
      String hex = hash[i].toRadixString(16);
      if (hex.length == 1) {
        hexString.write('0');
      }
      hexString.write(hex);
    }
    final base64Str = base64.encode(utf8.encode(hexString.toString()));
    return {
      "verifier": generatedString,
      "challenge": base64Str,
    };
  }

  static String get _getDeviceType {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    return data.size.shortestSide < 550 ? 'phone' : 'tablet';
  }

  static bool get isTablet {
    return _getDeviceType == 'tablet';
  }

  static String convertedDate(bool? isDate, String? date) {
    String toReturn =
        (isDate!) ? date!.substring(0, 10) : date!.substring(11, 16);

    /*DateFormat dateFormat = (isDate!)? DateFormat("dd/MM/yyyy") : DateFormat("kk:mm");
    DateTime dateTime = dateFormat.parse(date!);
    return (isDate)? DateFormat('dd/MM/yyyy').format(dateTime):DateFormat('kk:mm').format(dateTime);*/
    return toReturn;
  }

  static int getInputLength(String str, String check) {
    var list = (str.split(':'));
    if (str.contains(check)) {
      return int.parse(list.toList().last.toString());
    } else if (check.contains("minLength")) {
      return int.parse(list[1]);
    }
    return 50; //"length"
  }

  //reformat date and hour Date (dd/MM/yyyy hh:mm)
  static List<String> formatDateAndHour(String dateTime) {
    var inputFormat = DateFormat("dd-MM-yyyy'T'HH:mm:ssZZZZ");
    var dateTimeDefaultFormat = inputFormat.parse(dateTime);
    var outputFormat = DateFormat('dd/MM/yyyy hh:mm');
    var finalDateTimeFormat = outputFormat.format(dateTimeDefaultFormat); //
    List<String> separatedDateAndHour = finalDateTimeFormat.split(' ');
    //you get date in separatedDateAndHour[0] and hour in separatedDateAndHour[1]
    return separatedDateAndHour;
  }

  static String formatDate(String dateTime) {
    var inputFormat = DateFormat("yyy-MM-dd HH:mm:ssZZZZ");
    var dateTimeDefaultFormat = inputFormat.parse(dateTime);
    var outputFormat = DateFormat('dd/MM/yyyy  hh:mm:ss');
    var finalDateTimeFormat = outputFormat.format(dateTimeDefaultFormat);
    return finalDateTimeFormat;
  }

//2022-07-26T13:00:39.609Z
  static String formatDateStory(String dateTime) {
    var inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.ZZZZ");
    var dateTimeDefaultFormat = inputFormat.parse(dateTime);
    var outputFormat = DateFormat('dd/MM/yyyy à hh:mm');
    var finalDateTimeFormat = outputFormat.format(dateTimeDefaultFormat);
    return finalDateTimeFormat;
  }

  static Future<PermissionStatus> getContactPermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      return permissionStatus;
    } else {
      return permission;
    }
  }

  static String splitNumber(String msisdn) {
    return msisdn.replaceAllMapped(
        RegExp(r".{2}"), (match) => "${match.group(0)} ");
  }

}
