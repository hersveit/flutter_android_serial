# flutter_android_serial 
[![GitHub version](https://badge.fury.io/gh/hersveit%2Fflutter_android_serial.svg)](https://badge.fury.io/gh/hersveit%2Fflutter_android_serial)

## Install
```yaml
flutter_android_serial:
    git: https://github.com/hersveit/flutter_android_serial.git
```

## Using
```dart
import 'package:flutter_android_serial/flutter_android_serial.dart';

final serial = await FlutterAndroidSerial.androidSerial;
```

## Other

Returns empty `String` on iOS
