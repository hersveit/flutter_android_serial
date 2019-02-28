#import "FlutterAndroidSerialPlugin.h"
#import <flutter_android_serial/flutter_android_serial-Swift.h>

@implementation FlutterAndroidSerialPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterAndroidSerialPlugin registerWithRegistrar:registrar];
}
@end
