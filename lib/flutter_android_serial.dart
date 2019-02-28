import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAndroidSerial {
  static const MethodChannel _channel =
      const MethodChannel('flutter_android_serial');

  static Future<String> get androidSerial async {
    final String version = await _channel.invokeMethod('getAndroidSerial');
    return version;
  }
}
