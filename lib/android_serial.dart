import 'dart:async';

import 'package:flutter/services.dart';

class AndroidSerial {
  static const MethodChannel _channel =
      const MethodChannel('android_serial');

  /// Returns android.os.Build.SERIAL
  /// 
  /// Returns empty string on iOS
  static Future<String> get androidSerialNumber async {
    final String version = await _channel.invokeMethod('getSerialNumber');
    return version;
  }
}
