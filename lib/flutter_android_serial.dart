import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAndroidSerial {
  static const MethodChannel _channel =
      const MethodChannel('flutter_android_serial');

  static Future<String> getAndroidId() async {
    final String id = await _channel.invokeMethod('getAndroidId');
    return id;
  }
}
