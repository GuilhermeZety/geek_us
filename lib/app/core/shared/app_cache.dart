// ignore_for_file: unused_field, non_constant_identifier_names

import 'package:flutter/services.dart';
import 'package:geek_us/app/core/common/utils/utils.dart';

class AppCache {
  //SingleTon
  AppCache._();
  static final AppCache _instance = AppCache._();
  factory AppCache() => AppCache._instance;
  //

  static Future init() async {
    if (logo != null) {
      return;
    }
    List<Uint8List> resp = await Future.wait([
      Utils.getAssetsBytes('assets/logo.svg'),
    ]);
    logo = resp[0];
  }

  static Uint8List? logo;
}
