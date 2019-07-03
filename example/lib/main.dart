import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_android_serial/flutter_android_serial.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _androidId = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String androidId;
    try {
      androidId = await FlutterAndroidSerial.getaAndroidId();
    } on PlatformException {
      androidId = 'Failed to get android id.';
    }

    if (!mounted) return;

    setState(() {
      _androidId = androidId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ANDROID_ID plugin'),
        ),
        body: Center(
          child: Text('ANDROID_ID: $_androidId\n'),
        ),
      ),
    );
  }
}
