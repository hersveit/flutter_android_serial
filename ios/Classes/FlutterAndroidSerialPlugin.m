#import "FlutterAndroidSerialPlugin.h"

@implementation FlutterAndroidSerialPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_android_serial"
            binaryMessenger:[registrar messenger]];
  FlutterAndroidSerialPlugin* instance = [[FlutterAndroidSerialPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getAndroidSerial" isEqualToString:call.method]) {
    result(@"");
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
