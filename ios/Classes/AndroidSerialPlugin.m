#import "AndroidSerialPlugin.h"
#import <android_serial/android_serial-Swift.h>

@implementation AndroidSerialPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAndroidSerialPlugin registerWithRegistrar:registrar];
}
@end
